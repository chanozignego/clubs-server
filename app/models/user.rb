class User < ActiveRecord::Base

  has_many :reservation

  def to_s
    name
  end 

end
