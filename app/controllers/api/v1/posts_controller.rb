module Api
  module V1
    class PostsController < Api::V1::ApplicationController

      # skip_before_action :authenticate_member!

      api :GET, '/v1/posts', "Return all posts"
      error :code => 404, :desc => "Page Not Found"
      error :code => 422, :desc => "Unprocessable Entity"
      formats ['json']          
      def index
        super
      end

    end
  end
end
