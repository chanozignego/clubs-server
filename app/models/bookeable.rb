# == Schema Information
#
# Table name: bookeables
#
#  id          :integer          not null, primary key
#  name        :string           default(""), not null
#  unit_price  :decimal(, )      default(1.0), not null
#  unit_time   :decimal(, )      default(1.0), not null
#  description :string           default(""), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Bookeable < ActiveRecord::Base
  validates :name, :unit_price, :unit_time, presence: true
  validates :unit_price, :unit_time, numericality: true 
  has_many :reservation

  def to_s
    name
  end

end
