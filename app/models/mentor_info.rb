class MentorInfo < ApplicationRecord
  belongs_to :user
  has_many :subcategories
  has_many :bookings

  validate :mentor_cannot_view_another_mentor_profile_page

  def mentor_cannot_view_another_mentor_profile_page
    if @user.is_mentor && @mentor.id != @user.id
      errors.add(:mentor_info, "must belong to current mentor")
    end
  end
end
