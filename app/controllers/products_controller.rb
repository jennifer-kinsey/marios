class ProductsController < ApplicationController

  # def index
  #   if params[:sort_by] == nil
  #     @products = Product.sort_by_newest
  #   else
  #     @products = Product.send(params[:sort_by])
  #   else
  # end

  def index
      @products = Product.all
    else
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated!"
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product successfully deleted."
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :image, :origin, :cost)
  end

end
