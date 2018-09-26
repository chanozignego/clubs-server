module Admin
  class ReservationsController < Admin::ApplicationController

    def index
      resources = _search.try(:results) || scoped_collection
      resources = order.apply(resources).page(params[:page]).per(records_per_page).decorate
      page      = Administrate::Page::Collection.new(dashboard, order: order)
      respond_to do |format|
        format.html { render locals: { resources: resources, search_term: "", page: page, search: _search } }
        format.json { render json: [
          { id: '1', start: '2018-09-25T02:00:00', end: '2018-09-25T07:00:00', title: 'event 1', color: 'red' },
          { id: '2', start: '2018-09-25T05:00:00', end: '2018-09-25T22:00:00', title: 'event 2', color: 'red' },
          { id: '3', start: '2018-09-24', end: '2018-09-26', title: 'event 3', color: 'red' },
          { id: '4', start: '2018-09-25T03:00:00', end: '2018-09-25T08:00:00', title: 'event 4', color: 'red' },
          { id: '5', start: '2018-09-25T00:30:00', end: '2018-09-25T02:30:00', title: 'event 5', color: 'red' }
        ] }
      end
    end

    def new
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
