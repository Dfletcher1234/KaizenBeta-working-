module SessionsHelper
  # require 'geocoder'
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out?
      session[:user_id] = nil
  end

  def near_me(sub_cat)
    everyone_else = sub_cat.users.where(is_mentor: true)
    everyone_else.select do |mentor|
      dist = Geocoder::Calculations.distance_between(current_user.postal_code, mentor.postal_code )

      dist <= 4.0
    end
  end

  def postal_code_to_long_lat(cat)
    users = cat.users.where(is_mentor: true)
    nearme = users.select do |mentor|
        dist = Geocoder::Calculations.distance_between(current_user.postal_code, mentor.postal_code )

        dist <= 4.0
    end
    cordinates = []
    nearme.each do |mentor|
      cordinates << Geocoder.coordinates(mentor.postal_code)
    end
    p cordinates
  end

end
