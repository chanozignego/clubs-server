class Bookeable < ActiveRecord::Base
  validates :name, :unit_price, :unit_time, presence: true
  validates :unit_price, :unit_time, numericality: true 
  has_many :reservation

  def to_s
    name
  end

  def bookeable_name
    "#{bookeable_type} - #{name}"
  end 

end
