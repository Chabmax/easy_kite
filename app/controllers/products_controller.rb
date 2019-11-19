class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = policy_scope(Product)
  end

  def show
    # @product = Product.find(params[:id])
    authorize @product
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = current_user.products.build(params_product)
    authorize @product
    if @product.save
      redirect_to @product, notice: "Procuct successfully created"
    else
      render :new
    end
  end

  def edit
    # @product = Product.find(params[:id])
    authorize @product
  end

  def update
    # @product = Product.find(params[:id])
    @product.update(params_product)
    authorize @product
    redirect_to @product, notice: "Procuct successfully updated"
  end

  def destroy
    authorize @product
    @product.destroy
    redirect_to products_path, notice: "Procuct successfully deleted"
  end

  private

  def params_product
    params.require(:product).permit(:category, :brand, :description, :status, :price, :address, :city, photos: [])
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
