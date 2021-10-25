class ProductsController < ApplicationController

def index
  @products = Product.all
end

def new
  @product = Product.new
end

def edit
  @product = Product.find params[:id]
end

def update
  @product = Product.find params[:id]
  @product.update product_params
  @product.save
  redirect_to users_products_path(@current_user)
end

def show
  @product = Product.find params[:id]
end



def create
  @product = Product.new product_params
    if @product.save
      redirect_to products_path
    else
      render :new #show them form again
    end
end

def destroy
  @product = Product.destroy params[:id]
  redirect_to users_products_path(@current_user)
end

private # this makes all the following private
    def product_params #strong params (see docs)
      params.require(:product).permit(:name, :description, :price, :image, :location, :condition, :shipping, :category_id, :user_id)
    end


end
