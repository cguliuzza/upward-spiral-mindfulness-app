class Api::V1::MotivationCategoriesController < Api::V1::ApplicationController
    
    MotivationCategory = Api::V1::MotivationCategory
    
    def index
        @motivation_categories = MotivationCategory.all
        render json: @motivation_categories, status: :ok
    end

    def show
        motivation_category = MotivationCategory.find_by(id: params[:id])
        if motivation_category
            render json: motivation_category, status: :ok
        else
            render json: {error: "motivation category not found"}, status: :not_found
        end
    end

    def create
        motivation_category = MotivationCategory.new(motivation_category_params)
        if motivation_category.save
            render json: motivation_category, status: :created
        else
            render json: motivation_category.errors, status: :unprocessable_entity
        end
    end

    def update
        motivation_category = MotivationCategory.find(params[:id])
        if motivation_category.update(motivation_category_params)
          render json: motivation_category, status: :ok
        else
          render json: motivation_category.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        motivation_category = MotivationCategory.find(params[:id])
        if motivation_category
            motivation_category.destroy
            head :no_content
        else
            render json: {error: "motivation category not found"}, status: :not_found
        end
      end

    private

    def motivation_category_params
        params.permit(:motivation_id, :category_id)
    end
end

end