class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find params[:id]
  end


  private # this makes all the following private
    def category_params
      params.require(:category).permit(:name, :product_id, :image)
    end

end
