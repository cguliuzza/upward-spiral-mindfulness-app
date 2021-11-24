class Api::V1::SessionsController < Api::V1::ApplicationController
    
    User = Api::V1::User
    
    def me
      if current_user
          render json: @current_user, status: :ok
      else
          render json: { error: "You are not logged in" }, status: :unauthorized
      end
    end

    # POST '/login'
    def create
      user = User.find_by(email: params[:email])
      # if user && user.authenticate(params[:password])
      # byebug
      if user&.authenticate(params[:password])
        session[:user_id] = user.id
        render json: user, status: :ok
      else
        render json: {error: "invalid login credentials"}, status: :unauthorized
      end
    end
  
    # DELETE '/logout'
    def destroy
      session.delete(:user_id)
    end
end