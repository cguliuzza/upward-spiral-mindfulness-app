class UserActionsController < ApplicationController
    def index
        @user_actions = UserAction.all
        render json: @user_actions, status: :ok
    end

    def show
        user_action = UserAction.find_by(id: params[:id])
        if user_action
            render json: user_action, status: :ok
        else
            render json: {error: "user action not found"}, status: :not_found
        end
    end
end
