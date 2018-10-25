namespace :posts do
  
  task :populate => :environment do
    
    posts = [
      {
        title: 'Vuelve Music & House',
        body: Post.last.try(:body),
        author: 'Chano Zignego',
        state: :published,
        date: DateTime.now,
        remote_principal_image_url: 'http://costa-esmeralda.com.ar/wp-content/uploads/2018/09/WhatsApp-Image-2018-09-19-at-15.11.45-1.jpeg', 
        summary: 'El sábado 20 de octubre se llevará adelante Music&Houses 2018. Luego del éxito de la primera edición, vuelve el evento más importante de arquitectura del barrio.'
      },
      {
        title: 'Nuevo! Ampiación de proveduría',
        body: Post.last.try(:body),
        author: 'Chano Zignego',
        state: :published,
        date: DateTime.now,
        remote_principal_image_url: 'http://costa-esmeralda.com.ar/wp-content/uploads/2018/09/Imagen-Ampliacio%CC%81n-Proveeduria.jpg', 
        summary: 'A fines de agosto comenzaron los trabajos preliminares e inicio de obra de la ampliación de la Proveeduría.'
      },
      {
        title: 'Recomendaciones para limpieza de tanques',
        body: Post.last.try(:body),
        author: 'Chano Zignego',
        state: :published,
        date: DateTime.now - 1.day,
        remote_principal_image_url: 'http://costa-esmeralda.com.ar/wp-content/uploads/2018/09/tanques.jpg', 
        summary: 'Compartimos una nota con el paso a paso y las recomendaciones a seguir para la limpieza y desinfección de los tanques de agua y la red domiciliaria.'
      },
      {
        title: 'La eficiencia energética',
        body: Post.last.try(:body),
        author: 'Chano Zignego',
        state: :published,
        date: DateTime.now - 1.day,
        remote_principal_image_url: 'http://costa-esmeralda.com.ar/wp-content/uploads/2018/09/luz.jpg', 
        summary: '“No es más rico el que más tiene sino el que menos necesita” (Refrán español)'
      },
      {
        title: 'Golf: Torneo inter clubes',
        body: Post.last.try(:body),
        author: 'Chano Zignego',
        state: :published,
        date: DateTime.now - 2.day,
        remote_principal_image_url: 'http://costa-esmeralda.com.ar/wp-content/uploads/2018/08/AlGolf19_1-min.jpg', 
        summary: 'El 7, 8 y 9 de septiembre se realizará El Torneo Inter Clubes de Federación Mar y Sierras.'
      },
      {
        title: 'Tu vida sin bolsas de plástico',
        body: Post.last.try(:body),
        author: 'Chano Zignego',
        state: :published,
        date: DateTime.now - 3.day,
        remote_principal_image_url: 'http://costa-esmeralda.com.ar/wp-content/uploads/2018/08/f6332a2f-c0ac-490c-95ad-5502a304be9b-2.jpg', 
        summary: 'En Costa Esmeralda comenzamos con la campaña “no más bolsas de plástico”. '
      }
    ]


    posts.each do |post|
      Post.create(post)
    end
  end

end