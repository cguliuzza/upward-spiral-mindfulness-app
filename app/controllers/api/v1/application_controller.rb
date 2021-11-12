class Api::V1::ApplicationController < ActionController::API
    include ActionController::Cookies

    private
# UPDATE CURRENT USER CODE BELOW
User = Api::V1::User

    def current_user
      @current_user ||= User.find_by_id(session[:user_id])
    end
  end
