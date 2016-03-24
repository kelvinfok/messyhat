class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :show_user_session_id, :show_profile_id, :capital_first_character, :get_my_profile, :logged_in?


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end


  def show_user_session_id
    return "Session ID: #{session[:user_id]}"
end

  def show_profile_id
  if defined?(@profile.id)
      return "Profile ID: #{@profile.id}"
    else
    return "No Profile ID"
  end
end

  def logged_in?
  if @current_user.blank?
    false
  else
    true
  end
end

def restrict_access
  unless logged_in?
    flash[:error] = "You must login!"
    redirect_to login_url
  end
end

def capital_first_character text
  results = text.slice(0,1).capitalize + text.slice(1..-1)
end

def get_my_profile
Profile.find_by_user_id(current_user.id).id
end

end
