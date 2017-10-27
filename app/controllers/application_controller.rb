class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  def en_logged_in
    if !current_user
      redirect_to root_path
    end
  end
  def is_mentor
    if !current_user.is_mentor
      redirect_to root_path
    end
  end
end
