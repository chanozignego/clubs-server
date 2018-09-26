module Admin
  class BookeablesController < Admin::ApplicationController
    

    def index
      resources = _search.try(:results) || scoped_collection
      resources = order.apply(resources).page(params[:page]).per(records_per_page).decorate
      page      = Administrate::Page::Collection.new(dashboard, order: order)
      respond_to do |format|
        format.html { render locals: { resources: resources, search_term: "", page: page, search: _search } }
        format.json { render json: [
                  { id: 'a', title: 'Cancha principal', bookeable_type: 'Golf' },
                  { id: 'b', title: 'SUM', eventColor: 'green', bookeable_type: 'Instalaciones' },
                  { id: 'c', title: 'Parrilla', eventColor: 'orange', bookeable_type: 'Instalaciones', children: [
                    { id: 'c1', title: 'Parrilla 1' },
                    { id: 'c2', title: 'Parrilla 2' },
                    { id: 'c3', title: 'Parrilla 3' },
                    { id: 'c4', title: 'Parrilla 4' },
                    { id: 'c5', title: 'Parrilla 5' }
                  ] },
                  { id: 'd', title: 'Fútbol 5', bookeable_type: 'Fútbol', children: [
                    { id: 'd1', title: 'Cancha 1' },
                    { id: 'd2', title: 'Cancha 2' },
                    { id: 'd3', title: 'Cancha 3' },
                    { id: 'd4', title: 'Cancha 4' },
                    { id: 'd5', title: 'Cancha 5' },
                    { id: 'd6', title: 'Cancha 6' },
                    { id: 'd7', title: 'Cancha 7' },
                    { id: 'd8', title: 'Cancha 8' },
                    { id: 'd9', title: 'Cancha 9' },
                    { id: 'd10', title: 'Cancha 10' },
                    { id: 'd11', title: 'Cancha 11' }
                  ] },
                  { id: 'z', title: 'Fútbol 8', bookeable_type: 'Fútbol', children: [
                    { id: 'z1', title: 'Cancha 1' },
                    { id: 'z2', title: 'Cancha 2' },
                    { id: 'z3', title: 'Cancha 3' }
                  ] },
                  { id: 'e', title: 'Fútbol 11', bookeable_type: 'Fútbol' },
                  { id: 'f', title: 'Basquet', eventColor: 'red', bookeable_type: 'Basquet', children: [
                    { id: 'f1', title: 'Cancha 1' },
                    { id: 'f2', title: 'Cancha 2' }
                  ] },
                  { id: 'g', title: 'Gimnasio', bookeable_type: 'Instalaciones' },
                  { id: 'h', title: 'Pileta', bookeable_type: 'Instalaciones' },
                  { id: 'i', title: 'Terraza', bookeable_type: 'Instalaciones' }
                ] }
      end
    end




  end
end
