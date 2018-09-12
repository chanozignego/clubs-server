class TemporalImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
