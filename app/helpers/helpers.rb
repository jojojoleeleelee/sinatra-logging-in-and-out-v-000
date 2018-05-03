class Helpers
  def current_user(session)
    User.find_by(session[:user_id])
    # should it be session[:session_id] OR session[:id] ???
  end

  def is_logged_in?(sessions)
    if
  end
end
