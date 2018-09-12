class SiteContent < ActiveRecord::Base

  enum content_type: {
    image: 0,   # --> Imagen
    video: 1,   # --> Video
    text: 2     # --> Texto
  }

  mount_uploader :file, FileUploader
end
