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
      @reservation = Reservation.new
    end

    def create
      @reservation = Reservation.new(reservation_params)
      @reservation.save
    end

    def update
      @reservation.update(reservation_params)
    end

    def destroy
      @reservation.destroy
    end

    private
      def set_reservation
          @reservation = Reservation.find(params[:id])
      end

      def reservation_params
        params.require(:reservation).permit(:title, :date_range, :start, :end, :color)
      end

  end
end
