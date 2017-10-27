class MentorAvailabilitiesController < ApplicationController
  # update mentor_info records in the availiablity column
  def update
    @mentor_info = current_user.mentor_info

    @mentor_info.availability = !@mentor_info.availability

    @mentor_info.save!
    render json: current_user.mentor_info.availability
  end

end
