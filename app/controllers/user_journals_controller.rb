class UserJournalsController < ApplicationController
    def index
        @user_journals = UserJournal.all
        render json: @user_journals, status: :ok
    end

    def show
        user_journal = UserJournal.find_by(id: params[:id])
        if user_journal
            render json: user_journal, status: :ok
        else
            render json: {error: "user journal not found"}, status: :not_found
        end
    end
end
