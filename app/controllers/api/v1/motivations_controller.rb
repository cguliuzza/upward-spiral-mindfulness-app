class Api::V1::MotivationsController < Api::V1::ApplicationController

    Motivation = Api::V1::Motivation
    
    def index
        @motivations = Motivation.all
        render json: @motivations, status: :ok
    end

    def show
        motivation = Motivation.find_by(id: params[:id])
        if motivation
            render json: motivation, status: :ok
        else
            render json: {error: "motivation not found"}, status: :not_found
        end
    end

    def create
        motivation = Motivation.new(motivation_params)
        if motivation.save
            render json: motivation, status: :created
        else
            render json: motivation.errors, status: :unprocessable_entity
        end
    end

    def update
        motivation = Motivation.find(params[:id])
        if motivation.update(motivation_params)
          render json: motivation, status: :ok
        else
          render json: motivation.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        motivation = Motivation.find(params[:id])
        if motivation
            motivation.destroy
            head :no_content
        else
            render json: {error: "motivation not found"}, status: :not_found
        end
      end

    private

    def motivation_params
        params.permit(:text, :author, :likes)
    end
end

end
