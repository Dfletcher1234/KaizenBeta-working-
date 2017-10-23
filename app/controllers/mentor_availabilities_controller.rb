class MentorAvailabilitiesController < ApplicationController
  # update mentor_info records in the availiablity column
  def update
    @mentor_info = current_user.mentor_info
    puts current_user.mentor_info
    if @mentor_info.availability == false
    @mentor_info.availability = true
    else
    @mentor_info.availability = false
   end
   @mentor_info.save!
   render json: @mentor_info.availability
  end

end
