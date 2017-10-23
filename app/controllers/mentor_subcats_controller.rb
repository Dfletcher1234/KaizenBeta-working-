class MentorSubcatsController < ApplicationController
  def new
    @categories = Category.all
    @subcategories = Subcategory.all
  end
end
