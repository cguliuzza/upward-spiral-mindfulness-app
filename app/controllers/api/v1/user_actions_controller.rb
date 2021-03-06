class Api::V1::UserActionsController < Api::V1::ApplicationController
    
    UserAction = Api::V1::UserAction
    
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

    def create
        user_action = UserAction.new(user_action_params)
        if user_action.save
            render json: user_action, status: :created
        else
            render json: user_action.errors, status: :unprocessable_entity
        end
    end

    def update
        user_action = UserAction.find(params[:id])
        if user_action.update(user_action_params)
          render json: user_action, status: :ok
        else
          render json: user_action.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        user_action = UserAction.find(params[:id])
        if user_action
            user_action.destroy
            head :no_content
        else
            render json: {error: "user action not found"}, status: :not_found
        end
      end

    private

    def user_action_params
        params.permit(:action_id, :user_id)
    end
end