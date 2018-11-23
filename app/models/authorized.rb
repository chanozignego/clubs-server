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

class Authorized < ActiveRecord::Base
  belongs_to :user
  validates :name,:telephone, :dni,:user, presence: true
  validates :dni, length: { in: 7..8 }
  validates :dni,:telephone, numericality: { only_integer: true }
end
