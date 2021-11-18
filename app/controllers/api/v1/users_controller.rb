class Api::V1::UsersController < Api::V1::ApplicationController
    
    User = Api::V1::User
    
    def index
        @users = User.all
        render json: @users, status: :ok
    end

    # GET '/me'
    def show
        if current_user
          render json: current_user, status: :ok
        else
          render json: {error: "no active session"}, status: :unauthorized
        end
    end
    
    # POST '/signup'
    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: { error: user.errors }, status: :unprocessable_entity
        end
    end
    
    def update
        user = User.find(params[:id])
        if user.update(user_params)
            render json: user, status: :ok
        else
            render json: user.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        user = User.find(params[:id])
        if user
            user.destroy
            head :no_content
        else
            render json: {error: "user not found"}, status: :not_found
        end
    end
    
    private
    
    def user_params
        params.permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end