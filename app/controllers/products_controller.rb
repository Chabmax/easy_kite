class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @product = Product.new
  end

  def create
    @user = User.find(params[:user_id])
    @product = Product.new(params_product)
    @product.user = @user
    if @product.save
      redirect_to ######## ROUTE
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
  params.require(:product).permit(:category, :brand, :description, :status, :price, photos:[])

  end
