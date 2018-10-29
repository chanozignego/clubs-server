namespace :events do
  
  task :populate => :environment do
    
    events = [
    
      { 
        name: 'Recital Damas Gratis', 
        description: "Venite al Recital de Damas Gratis - Entrada $200", 
        date: "04/09/2018 17:05", 
        place: "Cancha de futbol 11 - principal"
      },
      { 
        name: 'Reunión de consorcio', 
        description: "Reunión de consorcio anual para definir temas", 
        date: "05/09/2018 17:05", 
        place: "Unidad funcional 2"
      },
      { 
        name: 'Torneo Basquet', 
        description: "Torneo abierto de basquet. Inscripcion $1000", 
        date: "05/09/2018 17:05", 
        place: "Cancha de Basquet - principal"
      },
      { 
        name: 'Torneo Futbol 11', 
        description: "Torneo abierto de basquet. Inscripcion $20000", 
        date: "07/09/2018 17:05", 
        place: "Cancha de futbol 11 - principal"
      },
      { 
        name: 'Charla Adicciones', 
        description: "Charla de adicciones brindada por Carlos Damin", 
        date: "10/09/2018 17:05", 
        place: "Auditorio"
        },
      { 
        name: 'Torneo de Truco', 
        description: "Torneo de truco", 
        date: "11/09/2018 17:05", 
        place: "Bar de Carlitos"
      },
      { 
        name: 'Jornada Recreativa', 
        description: "Jornada recreativa de padres e hijos", 
        date: "12/09/2018 17:05", 
        place: "Parque central"
      }
    ]

    events.each do |event|
      Event.create(event)
    end
  end

end