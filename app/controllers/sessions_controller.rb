class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      if user.is_mentor
        if user.mentor_info
          redirect_to mentor_info_path(current_user.mentor_info.id)
        else
          redirect_to new_mentor_info_path
        end
      else
        redirect_to user_path(current_user.id)
      end

    else
      render 'new'
    end
  end

  def destroy
    log_out?
    redirect_to root_path
  end
end
