class Api::V1::ActionCategoriesController < Api::V1::ApplicationController
    ActionCategory = Api::V1::ActionCategory

    def index
        @action_categories = ActionCategory.all
        render json: @action_categories, status: :ok
    end

    def show
        action_category = ActionCategory.find_by(id: params[:id])
        if action_category
            render json: action_category, status: :ok
        else
            render json: {error: "action category not found"}, status: :not_found
        end
    end

    def create
        action_category = ActionCategory.new(action_category_params)
        if action_category.save
            render json: action_category, status: :created
        else
            render json: action_category.errors, status: :unprocessable_entity
        end
    end

    def update
        action_category = ActionCategory.find(params[:id])
        if action_category.update(action_category_params)
          render json: action_category, status: :ok
        else
          render json: action_category.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        action_category = ActionCategory.find(params[:id])
        if action_category
            action_category.destroy
            head :no_content
        else
            render json: {error: "action category not found"}, status: :not_found
        end
      end
    private

    def action_category_params
        params.permit(:action_id, :category_id)
    end
end