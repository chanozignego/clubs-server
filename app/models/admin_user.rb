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
