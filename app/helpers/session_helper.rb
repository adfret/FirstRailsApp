module SessionHelper

# Logs in the given user.
def log_in(user)
  session[:user_id] = user.id
end


# 8.2.2
    def current_user
        if session[:user_id]
          User.find_by(id: session[:user_id])
    end
  end


end
