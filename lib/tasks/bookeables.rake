namespace :bookeables do
  
  task :initialize => :environment do
    
    Bookeable.create(name: 'Cancha principal', bookeable_type: 'Golf' )
    Bookeable.create(name: 'SUM', bookeable_type: 'Instalaciones' )
    Bookeable.create(name: 'Parrilla 1', bookeable_type: 'Instalaciones' )
    Bookeable.create(name: 'Parrilla 2', bookeable_type: 'Instalaciones'  )
    Bookeable.create(name: 'Parrilla 3', bookeable_type: 'Instalaciones'  )
    Bookeable.create(name: 'Parrilla 4', bookeable_type: 'Instalaciones'  )
    Bookeable.create(name: 'Parrilla 5', bookeable_type: 'Instalaciones' )
    Bookeable.create(name: 'Cancha 1', bookeable_type: 'Fútbol 5' )
    Bookeable.create(name: 'Cancha 2', bookeable_type: 'Fútbol 5'  )
    Bookeable.create(name: 'Cancha 3', bookeable_type: 'Fútbol 5'  )
    Bookeable.create(name: 'Cancha 4', bookeable_type: 'Fútbol 5'  )
    Bookeable.create(name: 'Cancha 5', bookeable_type: 'Fútbol 5'  )
    Bookeable.create(name: 'Cancha 6', bookeable_type: 'Fútbol 5'  )
    Bookeable.create(name: 'Cancha 7', bookeable_type: 'Fútbol 5'  )
    Bookeable.create(name: 'Cancha 8', bookeable_type: 'Fútbol 5'  )
    Bookeable.create(name: 'Cancha 9', bookeable_type: 'Fútbol 5'  )
    Bookeable.create(name: 'Cancha 10', bookeable_type: 'Fútbol 5'  )
    Bookeable.create(name: 'Cancha 11', bookeable_type: 'Fútbol 5' )
    Bookeable.create(name: 'Cancha 1', bookeable_type: 'Fútbol 8'  )
    Bookeable.create(name: 'Cancha 2', bookeable_type: 'Fútbol 8' )
    Bookeable.create(name: 'Cancha 3', bookeable_type: 'Fútbol 8')
    Bookeable.create(name: 'Cancha principal', bookeable_type: 'Futbol 11')
    Bookeable.create(name: 'Cancha 1', bookeable_type: 'Basquet' )
    Bookeable.create(name: 'Cancha 2', bookeable_type: 'Basquet')
    Bookeable.create(name: 'Gimnasio', bookeable_type: 'Instalaciones' )
    Bookeable.create(name: 'Pileta', bookeable_type: 'Instalaciones' )
    Bookeable.create(name: 'Terraza', bookeable_type: 'Instalaciones' )

  end

end