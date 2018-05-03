class Helpers
  def current_user(sessions)
    @current = User.find_by(sessions[:user_id])
  end

  def is_logged_in?(sessions)
  end
end
