# == Schema Information
#
# Table name: site_contents
#
#  id           :integer          not null, primary key
#  tag          :string
#  name         :string
#  content_type :integer
#  file         :string
#  text         :text
#  description  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class SiteContent < ActiveRecord::Base

  enum content_type: {
    image: 0,   # --> Imagen
    video: 1,   # --> Video
    text: 2     # --> Texto
  }

  mount_uploader :file, FileUploader


  validates :tag, :name, :content_type, presence: true

end
