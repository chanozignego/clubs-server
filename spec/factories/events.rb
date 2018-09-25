# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string           default(""), not null
#  description :string           default(""), not null
#  date        :datetime
#  place       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :event do
    name "MyString"
    description "MyString"
    date "2018-09-12 17:31:07"
    place "MyString"
  end
end
