class Api::V1::UserJournalsController < Api::V1::ApplicationController
    
    UserJournal = Api::V1::UserJournal
    
    def index
        user_journals = UserJournal.all
        render json: user_journals, status: :ok
    end

    def show
        user_journal = UserJournal.find_by(id: params[:id])
        if user_journal
            # render json: user_journal, status: :ok
            # WHAT DOES INCLUDE USERS DO BELOW? TEST THE CODE
            render json: user_journal, include: [:users], status: :ok
        else
            render json: {error: "user journal not found"}, status: :not_found
        end
    end

    def create
        user_journal = current_user.user_journals.build(user_journal_params)
        if user_journal.save
            render json: user_journal, status: :created
        else
            render json: user_journal.errors, status: :unprocessable_entity
        end
    end

    def update
        user_journal = UserJournal.find(params[:id])
        if user_journal.update(user_journal_params)
          render json: user_journal, status: :ok
        else
          render json: user_journal.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        user_journal = UserJournal.find(params[:id])
        user_journal.destroy
      end

    private

    def user_journal_params
        params.permit(:journal_id)
    end
end
