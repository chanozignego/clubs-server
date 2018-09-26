module Admin
  class ReservationsController < Admin::ApplicationController

    def index
      resources = _search.try(:results) || scoped_collection
      resources = order.apply(resources).page(params[:page]).per(records_per_page).decorate
      page      = Administrate::Page::Collection.new(dashboard, order: order)
      respond_to do |format|
        format.html { render locals: { resources: resources, search_term: "", page: page, search: _search } }
        format.json { render json: [
          { id: '1', resourceId: 'b', start: '2018-04-07T02:00:00', end: '2018-04-07T07:00:00', title: 'Juan Perez' },
          { id: '2', resourceId: 'c2', start: '2018-04-07T05:00:00', end: '2018-04-07T22:00:00', title: 'Lola Farias' },
          { id: '3', resourceId: 'd5', start: '2018-04-06', end: '2018-04-08', title: 'Roberto Martinez de Oz' },
          { id: '4', resourceId: 'e', start: '2018-04-07T03:00:00', end: '2018-04-07T08:00:00', title: 'Marta Minujin' },
          { id: '5', resourceId: 'f', start: '2018-04-07T00:30:00', end: '2018-04-07T02:30:00', title: 'Adalberto Roman' }
        ] }
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
