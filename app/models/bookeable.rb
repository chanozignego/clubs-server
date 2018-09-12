class Bookeable < ActiveRecord::Base

  has_many :reservation

end
