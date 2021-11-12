class Api::V1::JournalsController < Api::V1::ApplicationController
    
    Journal = Api::V1::Journal
    
    def index
        @journals = Journal.all
        render json: @journals, status: :ok
    end

    def show
        journal = Journal.find_by(id: params[:id])
        if journal
            render json: journal, status: :ok
        else
            render json: {error: "journal not found"}, status: :not_found
        end
    end

    def create
        journal = current_user.created_journals.build(journal_params)
        if journal.save
            render json: journal, status: :created
        else
            render json: journal.errors, status: :unprocessable_entity
        end
    end

    def update
        journal = Journal.find(params[:id])
        if journal.update(journal_params)
          render json: journal, status: :ok
        else
          render json: journal.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        journal = Journal.find(params[:id])
        if journal
            journal.destroy
            head :no_content
        else
            render json: {error: "journal not found"}, status: :not_found
        end
      end

    private

    def journal_params
        params.permit(:title, :message)
    end
end