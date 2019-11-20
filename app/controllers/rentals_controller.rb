class RentalsController < ApplicationController
  before_action :set_product, only: [:new]

  def index

  end

  def new
    @rental = Rental.new
    authorize @rental
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end
end
