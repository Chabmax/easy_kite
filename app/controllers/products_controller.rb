class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @user = current_user
    @product = Product.new
  end

  def create
    @user = current_user
    @product = Product.new(params_product)
    @product.user = @user
    raise
    if @product.save
      redirect_to product_path(@product)
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
