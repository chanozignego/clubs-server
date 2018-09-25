# == Schema Information
#
# Table name: authorizeds
#
#  id          :integer          not null, primary key
#  name        :string           default(""), not null
#  telephone   :string           default(""), not null
#  dni         :string           default(""), not null
#  user_id     :integer
#  date_in     :datetime
#  date_out    :datetime
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :authorized do
    name "MyString"
    telephone "MyString"
    dni "MyString"
    user nil
    date_in "2018-09-12 17:22:49"
    date_out "2018-09-12 17:22:49"
    description "MyString"
  end
end
