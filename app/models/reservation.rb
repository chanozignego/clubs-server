class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :bookeable

  # validates :date, :bookeable, :user, :time_used, presence: true
  # validates :time_used, numericality: { only_integer: true }
end
