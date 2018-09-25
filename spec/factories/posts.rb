# == Schema Information
#
# Table name: posts
#
#  id              :integer          not null, primary key
#  title           :string           default(""), not null
#  state           :integer          default(0), not null
#  summary         :string
#  body            :text             not null
#  author          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  principal_image :string
#  date            :datetime
#

FactoryGirl.define do
  factory :post do
    title "MyString"
    state 1
    summary "MyString"
    body "MyText"
    author "MyString"
  end
end
