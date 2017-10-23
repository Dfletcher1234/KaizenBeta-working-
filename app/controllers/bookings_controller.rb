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


     @booking.status = 'false'
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
private
  def booking_params
    params.require(:booking).permit(:booking_date, :booking_time, :mentor_id, :student_id)
  end

end
