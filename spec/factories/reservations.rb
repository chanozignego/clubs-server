# == Schema Information
#
# Table name: reservations
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  bookeable_id :integer
#  date         :datetime         not null
#  time_used    :decimal(, )
#  comments     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  title        :string           default(""), not null
#  date_range   :string           default(""), not null
#  start        :datetime
#  end          :datetime
#  color        :string
#

FactoryGirl.define do
  factory :reservation do
    user nil
    bookeable nil
    date "2018-09-12 16:22:39"
    time_used "9.99"
    comments "MyString"
  end
end
