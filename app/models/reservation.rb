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
#

class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :bookeable

  # validates :date, :bookeable, :user, :time_used, presence: true
  # validates :time_used, numericality: { only_integer: true }
end
