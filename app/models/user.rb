# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string           default(""), not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  dni                    :string
#  member_id              :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  telephone              :string
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  remember_updated_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#

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
