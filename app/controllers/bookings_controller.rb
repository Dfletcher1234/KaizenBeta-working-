class BookingsController < ApplicationController
  def new
    @mentor_info = MentorInfo.find(params[:mentor_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.mentor_id = params[:booking][:mentor_id]
    @booking.student_id = current_user.id
    @booking.booking_date = params[:booking][:booking_date]
    @booking.booking_time = params[:booking][:booking_time]
    @booking.status = false

    if @booking.save!
      flash[:notice] = "Booking successfully created"
      redirect_to root_url
    end
  end

 def index
    @bookings = Booking.all
  end

  def show
    @booking = current_booking
  end

 def destroy

 end


 def change_status
   booking_find = Booking.find(params[:id])
   booking_find.status = true
   booking_find.save
   render json: booking_find.status
 end

 def notification
   return "not logged_in" unless current_user 
   if current_user.is_mentor
     notifications = current_user.mentor_bookings.unconfirmed
     url = "/mentor_infos/#{current_user.id}"
  else
     notifications = current_user.student_bookings.where(status: false)
    url = "/users/#{current_user.id}"
  end
  arr = []
  notifications.each do |n|
    hash = {}
    hash[:name] = n.student.first_name
    hash[:date] = n.booking_date.strftime("%m/%d/%Y")
    hash[:time] = n.booking_time.strftime("%I:%M%p")
    hash[:url] =  url
    hash[:status] = n.status ? "Confirmed" : "Unconfirmed"
    arr << hash
  end
   render json: {number: notifications.count, notification: arr}
 end

private
  def booking_params
    params.require(:booking).permit(:booking_date, :booking_time, :mentor_id, :student_id)
  end

end
