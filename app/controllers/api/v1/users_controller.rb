class Api::V1::UsersController < Api::V1::ApplicationController
    
    User = Api::V1::User
    
    def index
        @users = User.all
        render json: @users, status: :ok
    end
    
    def signup
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            render json: {user: user}, status: :created
        else
            render json: user.errors, status: :unprocessable_entity
        end
    end
    
    def update
        user = User.find(params[:id])
        if user.update(user_params)
            render json: {user: user}, status: :ok
        else
            render json: user.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        user = User.find(params[:id])
        user.destroy
    end
    
    private
    
    def user_params
        params.permit(:first_name, :last_name, :email, :password)
    end
end