class UserJournalsController < ApplicationController
    def index
        @user_journals = UserJournal.all
        render json: @user_journals
    end
end
