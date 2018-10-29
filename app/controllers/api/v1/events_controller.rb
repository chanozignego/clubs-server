module Api
  module V1
    class EventsController < Api::V1::ApplicationController

      # skip_before_action :authenticate_member!

      api :GET, '/v1/events', "Return all events"
      error :code => 404, :desc => "Page Not Found"
      error :code => 422, :desc => "Unprocessable Entity"
      formats ['json']          
      def index
        super
      end

      api :GET, '/v1/events/:id', "Return one event"
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
