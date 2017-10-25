class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  @user = current_user

end

  def show
    @category = Category.find(params[:id])
  end

end
