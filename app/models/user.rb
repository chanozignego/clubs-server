class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  validates :name, :dni,:telephone, presence: true
  validates :dni, length: { in: 7..8 }
  validates :dni, :telephone, numericality: { only_integer: true }
  has_many :reservation

  def to_s
    name
  end

end
