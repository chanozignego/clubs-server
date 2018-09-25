# == Schema Information
#
# Table name: temporal_images
#
#  id         :integer          not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :temporal_image do
    image "MyString"
  end
end
