class SubcategoriesController < ApplicationController

def show
@subcategory = Subcategory.find(params[:id])
# if @user[:is_mentor] == true
#   @mentor = @user
# else
#   @user = @student
# end
@booking = Booking.new
@users = User.all

end



def index
@subcategories = Subcategory.all

end

def destroy
end

def update
end
















end
