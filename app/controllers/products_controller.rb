class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Product successfully added!"
      redirect_to products_path
    else
      flash[:alert] = "Sorry, ware unable to add the product, consult error message for more details"
      render :new
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:success] = "Product successfully updated"
      redirect_to products_path
    else
      flash[:alert] = "Your changes were not saved"
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:success] = 'Your Post has been deleted!'
    redirect_to products_path
  end



  private
    def product_params
      params.require(:product).permit(:name, :cost, :origin)
    end

end
