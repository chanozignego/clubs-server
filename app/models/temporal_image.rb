# == Schema Information
#
# Table name: temporal_images
#
#  id         :integer          not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TemporalImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
