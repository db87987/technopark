class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @articles = Article.where(:category_id => @category.id).order("SN ASC")
  end
end
