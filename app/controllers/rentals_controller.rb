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
    if @rental.save
      redirect_to @product, notice: "Rental successfully created"
    else
      render "products/show"
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
end
