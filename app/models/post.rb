class Post < ActiveRecord::Base
  
  enum state: {
    in_progress: 0,   # --> lo puede editar el autor
    canceled: 1,      # --> lo pueden cancelar todos
    censored: 2,      # --> solo se puede censurar por el editor
    in_revision: 3,   # --> solo lo puede aceptar/editar el editor
    published: 4      # --> solo lo puede editar el editor
  }

  mount_uploader :principal_image, PictureUploader

end
