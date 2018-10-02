# == Schema Information
#
# Table name: bookeables
#
#  id             :integer          not null, primary key
#  name           :string           default(""), not null
#  unit_price     :decimal(, )      default(1.0), not null
#  unit_time      :decimal(, )      default(1.0), not null
#  description    :string           default(""), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  bookeable_type :string
#

FactoryGirl.define do
  factory :bookeable do
    name "MyString"
    unit_price "9.99"
    unit_time "9.99"
    description "MyString"
  end
end
