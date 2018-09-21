class SiteContent < ActiveRecord::Base

  enum content_type: {
    image: 0,   # --> Imagen
    video: 1,   # --> Video
    text: 2     # --> Texto
  }

  mount_uploader :file, FileUploader


  validates :tag, :name, :content_type, presence: true

end
