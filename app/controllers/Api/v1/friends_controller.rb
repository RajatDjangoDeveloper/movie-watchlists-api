# frozen_string_literal: true

module Api
  module V1
    class FriendsController < ApplicationController
      before_action :authenticate_user!
      load_and_authorize_resource

      def index
        friends = Friend.all

        if friends
          render json: { status: 'SUCCESS', message: 'Fetched all the friends successfully', data: friends },
                 status: :ok
        else
          render json: friends.errors, status: :bad_request
        end
      end
    end
  end
end
