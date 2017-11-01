class MentorInfo < ApplicationRecord
  belongs_to :user
  has_many :subcategories
  has_many :bookings


end
