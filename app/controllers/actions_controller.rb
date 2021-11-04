class ActionsController < ApplicationController
    def index
        @actions = Action.all
        render json: @actions, status: :ok
    end

    def show
        action = Action.find_by(id: params[:id])
        if action
            render json: action, status: :ok
        else
            render json: {error: "action not found"}, status: :not_found
        end
    end
end
