class JournalsController < ApplicationController
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
end
