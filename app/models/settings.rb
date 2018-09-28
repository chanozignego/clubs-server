class Settings < ActiveRecord::Base
  validates :singleton_guard, inclusion: { in: [0] }, uniqueness: true

  def self.instance
    Settings.first || Settings.create
  end
end
