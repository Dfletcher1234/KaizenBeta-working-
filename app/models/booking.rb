class Booking < ApplicationRecord

  belongs_to :student, class_name: "User"
  belongs_to :mentor, class_name: "User"
  validate :booking_date_future



  scope :confirmed, -> { where(status: true) }
  scope :unconfirmed, -> { where(status: false) }


  def booking_date_future
    if booking_date < Date.today
      errors.add(:booking_date, message:"Booking date should be in the future.") 
    end
  end

end
