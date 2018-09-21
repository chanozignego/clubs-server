class Event < ActiveRecord::Base
  validates :name, :place, :date, presence: true
end
