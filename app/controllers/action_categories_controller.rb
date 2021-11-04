class ActionCategoriesController < ApplicationController
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
end
