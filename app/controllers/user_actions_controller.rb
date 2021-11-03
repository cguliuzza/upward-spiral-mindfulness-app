class UserActionsController < ApplicationController
    def index
        @user_actions = UserAction.all
        render json: @user_actions
    end

end
