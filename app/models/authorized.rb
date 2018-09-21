class Authorized < ActiveRecord::Base
  belongs_to :user
  validates :name,:telephone, :dni,:date_in,:user, presence: true
  validates :dni, length: { in: 7..8 }
  validates :dni,:telephone, numericality: { only_integer: true }
end
