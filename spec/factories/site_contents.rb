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

FactoryGirl.define do
  factory :site_content do
    tag "MyString"
    name "MyString"
    content_type 1
    file "MyString"
    text "MyText"
    description "MyString"
  end
end
