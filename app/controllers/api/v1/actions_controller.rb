class Api::V1::ActionsController < Api::V1::ApplicationController
    
    Action = Api::V1::Action
    
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

    def create
        action = Action.new(action_params)
        if action.save
            render json: action, status: :created
        else
            render json: action.errors, status: :unprocessable_entity
        end
    end

    def update
        action = Action.find(params[:id])
        if action.update(action_params)
          render json: action, status: :ok
        else
          render json: action.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        action = Action.find(params[:id])
        if action
            action.destroy
            head :no_content
        else
            render json: {error: "action not found"}, status: :not_found
        end
      end

    private

    def action_params
        params.permit(:name, :description, :minutes)
    end
end