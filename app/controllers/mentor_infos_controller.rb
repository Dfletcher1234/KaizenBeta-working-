class MentorInfosController < ApplicationController
  before_action :ensure_logged_in
  before_action :is_mentor, only: [:create,:update,:edit]
  def index
    @mentor_infos = MentorInfo.all
  end

  def show
    @user = current_user
    @mentor = User.find(params[:id])

    if @user.is_mentor && @mentor.id != @user.id
      flash[:notice] = "Can't view another mentors profile page!"
      redirect_to mentor_info_path(current_user.id)
    end

    @mentor_info = @mentor.mentor_info
    @bookings = Booking.all
    @booking = Booking.new

  end

  def new
    @mentor_info = MentorInfo.new
    @categories = Category.all
    @subcategories = Subcategory.all

  end

  def create
    current_user.create_mentor_info(summary: params[:mentor_info][:summary])
    subcat_add = Subcategory.where(id: params["mentor_info"]["subcategories_ids"])
    subcat_add.each do |subcat|
      current_user.subcategories << subcat
    end
    redirect_to mentor_info_path(current_user.id)
  end

  def edit
    @user = current_user
    # @mentor_info = @user.mentor_info ? @user.mentor_info : @user.create_mentor_info
    @mentor_info = current_user.mentor_info

    @categories = Category.all
    @subcategory = Subcategory.all
  end

  def update
    @user = current_user

    @user.mentor_info.summary = params[:mentor_info][:summary]
    @user.mentor_info.save
    subcat_add = Subcategory.where(id: params[:mentor_info][:subcategories_ids])
    @user.subcategories.delete_all
    subcat_add.each do |subcat|
      @user.subcategories << subcat
    end
      redirect_to mentor_info_path(@user.id)
  end



end
