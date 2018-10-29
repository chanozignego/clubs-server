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

      api :GET, '/v1/posts/:id', "Return one post"
      param :id, :number, required: true
      error :code => 404, :desc => "Page Not Found"
      error :code => 422, :desc => "Unprocessable Entity"
      formats ['json']          
      def show
        super
      end

    end
  end
end
