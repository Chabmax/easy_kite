class RentalsController < ApplicationController
  before_action :set_product, only: [:new, :create]
  before_action :set_rental, only: [:edit, :update, :destroy]

  def index
    @rentals = policy_scope(Rentals)
  end

  def new
    @rental = Rental.new
    authorize @rental
  end

  def create
    @rental = current_user.rentals.build(params_rental)
    @rental.product = @product
    authorize @rental
    if valid_rental_period?(@product, @rental)
      if @rental.save
        redirect_to @product, notice: "Rental successfully created"
      else
        render :new
      end
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @rental.update(params_rental)
      redirect_to '/dashboard', notice: "Rental successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @rental.destroy
    redirect_to '/dashboard', notice: "Rental successfully deleted"
  end

  private

  def params_rental
    params.require(:rental).permit(:date_start, :date_end)
  end

  def set_rental
    @rental = Rental.find(params[:id])
    authorize @rental
  end

  def set_product
    @product = Product.find(params[:product_id])
  end

  def valid_rental_period?(product, new_rental)
    product.rentals.all? do |rental|
      start_before_start = new_rental.date_start < rental.date_start
      end_before_start = new_rental.date_end < rental.date_start
      start_after_end = new_rental.date_start > rental.date_end
      end_after_end = new_rental.date_end > rental.date_end

      (start_before_start && end_before_start) || (start_after_end && end_after_end)
    end
  end
end
