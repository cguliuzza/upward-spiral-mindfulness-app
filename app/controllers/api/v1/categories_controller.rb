class Api::V1::CategoriesController < Api::V1::ApplicationController
    
    Category = Api::V1::Category
    
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

    def create
        category = current_user.created_categories.build(category_params)
        if category.save
            render json: category, status: :created
        else
            render json: category.errors, status: :unprocessable_entity
        end
    end

    def update
        category = Category.find(params[:id])
        if category.update(category_params)
          render json: category, status: :ok
        else
          render json: category.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        category = Category.find(params[:id])
        category.destroy
      end

    private

    def category_params
        params.permit(:name)
    end
end
