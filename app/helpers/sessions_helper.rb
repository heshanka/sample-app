module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  #return the current logged in user if there is any?
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
end
