class Api::V1::UsersController < Api::V1::ApplicationController
    
    User = Api::V1::User
    
    def index
        @users = User.all
        render json: @users, status: :ok
    end

    def show
        # user = User.find_by(id: params[:id])
        if current_user
            render json: current_user, status: :ok
        else
            render json: {error: "No active session"}, status: :unauthorized
        end
    end

    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: user.errors, status: :unprocessable_entity
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
        user.destroy
      end

    private

    def user_params
        params.permit(:email, :password)
        # params.permit(:email, :password, :password_confirmation)
    end
end