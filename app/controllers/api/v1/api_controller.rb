module Api::V1
  class ApiController < ApplicationController
    acts_as_token_authentication_handler_for User
    before_action :require_authentication!

    include Response
    include ExceptionHandler

    private

    def require_authentication!
      throw(:warden, scope: :user) unless current_user.presence
    end
  end
end