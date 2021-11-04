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
        new_user = User.create(user_params)
        render json: new_user, status: :created
    end

    private

    def user_params
        params.permit(:first_name, :last_name, :email, :admin, :password, :password_digest)
    end
end


# {
#     "first_name": "Jimmy",
#     "last_name": "Neutron",
#     "email": "jimmy@email.com",
#     "password": 123,
#     "admin": true
# }