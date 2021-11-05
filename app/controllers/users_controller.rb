class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users, status: :ok
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user, status: :ok
        else
            render json: {error: "user not found"}, status: :not_found
        end
    end

    def create
        user = User.new(user_params)
        if user.save
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
        params.permit(:first_name, :last_name, :email, :admin, :password)
        # PERMIT PASSWORD AND PASSWORD_DIGEST??
    end
end


# {
#     "first_name": "Jimmy",
#     "last_name": "Neutron",
#     "email": "jimmy@email.com",
#     "password": 123,
#     "admin": true
# }