class UsersController < ApplicationController
  attr_accessor :name, :email

  def show
    @user = current_user
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      if @user.is_mentor
        redirect_to new_mentor_info_path
      else
        redirect_to user_path(current_user.id)
      end
    else
      render 'new'
    end




  end



private
  def user_params
    params.require(:user).permit(:postal_code, :first_name, :last_name, :email, :is_mentor, :phone, :password, :password_confirmation, :avatar)
  end

end
