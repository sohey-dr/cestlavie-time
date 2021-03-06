module Api
  module V1
    class MembersController < ApplicationController
      protect_from_forgery
      skip_before_action :verify_authenticity_token

      def login
        member = Member.find_by(name: params[:name])
        if member && member.authenticate(params[:password_digest])
          render json: member
        else
          render json: 'no auth'
        end
      end
    end
  end
end
