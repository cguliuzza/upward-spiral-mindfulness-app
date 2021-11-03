class ActionCategoriesController < ApplicationController
    def index
        @action_categories = ActionCategory.all
        render json: @action_categories
    end
end
