# == Schema Information
#
# Table name: admin_users
#
#  id                     :integer          not null, primary key
#  first_name             :string
#  last_name              :string
#  telephone              :string
#  roles                  :text             default([]), is an Array
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class AdminUser < ActiveRecord::Base
  include Rolificable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, :last_name, :roles ,:telephone, presence: true
  validates :telephone, numericality: { only_integer: true }

  def full_name
    "#{first_name} #{last_name}"
  end

end
