class Api::V1::SessionsController < Api::V1::ApplicationController
    
    User = Api::V1::User
  
    def me
      if session[:user_id]
        user = User.find(session[:user_id])
        render json: user
      else
        render json: {error: "Not logged in"}, status: :not_found
      end
    end
    
    def login
      user = User.find_by(email: params[:email])
      if user&.authenticate(params[:password])
        session[:user_id] = user.id
        render json: user, status: :ok
      else
        render json: {error: "Invalid email and/or password"}, status: :unauthorized
      end
    end
  
    def logout
      if current_user
        session.delete :user_id
      else
        render json: { error: 'no active session'}, status: :unprocessable_entity
      end
    end
end