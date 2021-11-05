class ApplicationController < ActionController::API
    include ActionController::Cookies

    private
# UPDATE CURRENT USER CODE BELOW

    def current_user
      User.first
    end
  end
