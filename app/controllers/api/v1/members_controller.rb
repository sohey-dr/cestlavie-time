module Api
  module V1
    class MembersController < ApplicationController
      def show
        render json: { status: 'SUCCESS', message: 'Loaded the post', data: "完璧" }
      end
    end
  end
end