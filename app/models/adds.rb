# == Schema Information
#
# Table name: adds
#
#  id              :integer          not null, primary key
#  singleton_guard :integer          default(0)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  logo            :string
#

class Adds < ActiveRecord::Base
  validates :singleton_guard, inclusion: { in: [0] }, uniqueness: true

  def self.instance
    Adds.first || Adds.create
  end

  mount_uploader :logo, ImageUploader

end
