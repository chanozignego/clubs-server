module Api
  module V1
    class AuthorizedsController < Api::V1::ApplicationController

      # skip_before_action :authenticate_member!

      api :GET, '/v1/authorizeds', "Return all authorizeds"
      error :code => 404, :desc => "Page Not Found"
      error :code => 422, :desc => "Unprocessable Entity"
      formats ['json']          
      def index
        super
      end

      api :GET, '/v1/authorizeds/:id', "Return one authorized"
      param :id, :number, required: true
      error :code => 404, :desc => "Page Not Found"
      error :code => 422, :desc => "Unprocessable Entity"
      formats ['json']          
      def show
        super
      end

      api :PUT, '/v1/authorizeds/:id', "Update one authorized"
      param :id, :number, required: true
      param :name, String, required: true
      param :telephone, String, required: true
      param :dni, String, required: true
      param :date_in, String, required: false
      param :date_out, String, required: false
      param :description, String, required: false
      error :code => 404, :desc => "Page Not Found"
      error :code => 422, :desc => "Unprocessable Entity"
      formats ['json']          
      def update
        # TODO: remove! 
        params[:authorized][:user_id] = User.first.id
        super
      end

      api :POST, '/v1/authorizeds', "Create one authorized"
      param :name, String, required: true
      param :telephone, String, required: true
      param :dni, String, required: true
      param :date_in, String, required: false
      param :date_out, String, required: false
      param :description, String, required: false
      error :code => 404, :desc => "Page Not Found"
      error :code => 422, :desc => "Unprocessable Entity"
      formats ['json']          
      def create
        # TODO: remove! 
        params[:user_id] = User.first.id
        super
      end

      api :DELETE, '/v1/authorizeds/:id', "Destroy one authorized"
      param :id, :number, required: true
      error :code => 404, :desc => "Page Not Found"
      error :code => 422, :desc => "Unprocessable Entity"
      formats ['json']          
      def delete
        super
      end

    end
  end
end
