class Helpers
  def current_user(sessions)
    User.find_by(sessions[:user_id])
    # should it be sessions[:session_id] OR sessions[:id] ???
  end

  def is_logged_in?(sessions)
  end
end
