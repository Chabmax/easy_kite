class RentalsController < ApplicationController
  before_action :set_product, only: [:new, :create]

  def index

  end

  def new
    @rental = Rental.new
    authorize @rental
  end

  def create
    @rental = current_user.rentals.build(params_rental)
    @product.rentals
    @rental.product = @product
    authorize @rental
    if @rental.save
      redirect_to @product, notice: "Rental successfully created"
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def params_rental
    params.require(:rental).permit(:date_start, :date_end)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end
