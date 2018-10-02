# == Schema Information
#
# Table name: settings
#
#  id              :integer          not null, primary key
#  primary_color   :string
#  secondary_color :string
#  typography      :string
#  twitter_user    :string
#  facebook_user   :string
#  instagram_user  :string
#  youtube_user    :string
#  singleton_guard :integer          default(0)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  logo            :string
#

FactoryGirl.define do
  factory :setting, class: 'Settings' do

  end
end
