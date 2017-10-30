class SearchController < ApplicationController
  def create
    @results = Subcategory.where("name ILike ?",  "%#{params[:search]}%")
    render 'results'
  end

  def new

  end
  

end
