class CategoriesController < ApplicationController
    def index
        @categories = Category.all
        render json: @categories, status: :ok
    end

    def show
        category = Category.find_by(id: params[:id])
        if category
            render json: category, status: :ok
        else
            render json: {error: "category not found"}, status: :not_found
        end
    end
end
