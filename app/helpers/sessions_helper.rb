module SessionsHelper
    # logs in the user
    def log_in(user)
        session[:user_id] = user.id
    end
    
    # Returns the user corresponding to the remember token cookie.
    def current_user
        if (user_id = session[:user_id])
            @current_user ||= User.find_by(id: user_id)
        elsif (user_id = cookies.signed[:user_id])
            user = User.find_by(id: user_id)
            if user && user.authenticated?(cookies[:remember_token])
                log_in user
                @current_user = user
            end
        end
    end

    # Remembers a user in a persistent session.
    # Steps 1 and 2 from remember action of model User
    # 3) Put signed user_id in cookies 
    #   .signed encrypts it in the cookies
    # 4) Put remember_token attribute of User model in cookes to be Digested later and compared with the token in the database
    #   4.a) It is later compared in the current_user function
    def remember(user)
        user.remember
        cookies.permanent.signed[:user_id] = user.id
        cookies.permanent[:remember_token] = user.remember_token
    end

    def logged_in?
        !current_user.nil?
    end
    
    # Forgets a persistent session.
    def forget(user)
        user.forget
        cookies.delete(:user_id)
        cookies.delete(:remember_token)
    end

    def log_out
        forget(current_user)
        session.delete(:user_id)
        @current_user = nil
    end
end
