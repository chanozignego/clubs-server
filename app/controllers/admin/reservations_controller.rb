module Admin
  class ReservationsController < Admin::ApplicationController

    def index
      resources = _search.try(:results) || scoped_collection
      resources = order.apply(resources).page(params[:page]).per(records_per_page).decorate
      page      = Administrate::Page::Collection.new(dashboard, order: order)
      respond_to do |format|
        format.html { render locals: { resources: resources, search_term: "", page: page, search: _search } }
        format.json { render json: scoped_collection}
      end
    end
    
    def new
      @reservation = Reservation.new
    end

    def edit
      set_reservation
    end

    def create
      @reservation = Reservation.new(reservation_params)
      @reservation.date = @reservation.start
      @reservation.save
      @json_reservation = ReservationSerializer.new(@reservation).to_json
    end

    def update
      set_reservation
      @reservation.update(reservation_params)
      @json_reservation = ReservationSerializer.new(@reservation).to_json
    end

    def destroy
      set_reservation
      @json_reservation = ReservationSerializer.new(@reservation).to_json
      @reservation.destroy
    end

    private
      def set_reservation
          @reservation = Reservation.find(params[:id])
      end

      def reservation_params
        params.require(:reservation).permit(:title, :user_id, :bookeable_id, :date_range, :start, :end, :color)
      end

  end
end
