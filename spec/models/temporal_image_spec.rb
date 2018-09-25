# == Schema Information
#
# Table name: temporal_images
#
#  id         :integer          not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe TemporalImage, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
