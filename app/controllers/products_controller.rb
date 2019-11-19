class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create

    @product = current_user.products.build(params_product)
    authorize @product
    if @product.save
      redirect_to @product
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def params_product
    params.require(:product).permit(:category, :brand, :description, :status, :price, photos:[])
  end
end
