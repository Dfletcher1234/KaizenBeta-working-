class Booking < ApplicationRecord

  belongs_to :student, class_name: "User"
  belongs_to :mentor, class_name: "User"



  scope :confirmed, -> { where(status: true) }
  scope :unconfirmed, -> { where(status: false) }
end
