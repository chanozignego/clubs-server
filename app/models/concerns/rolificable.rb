module Rolificable
  extend ActiveSupport::Concern

  ROLES = ["superadmin", "simpleadmin"]


  included do
    validate :valid_roles

    scope :with_role, -> (*roles) do
      roles_string = roles.map { |r| "'#{r}'" }.join(', ')
      where(%Q|"#{table_name}"."roles" @> ARRAY[#{roles_string}]|)
    end

  end

  # Define methods for ask if user has an specific role. Example: user.is_admin?
  ROLES.each do |role|
    define_method :"is_#{role}?" do
      self.roles.include?(role)
    end
  end

  def add_role role
    role = role.to_s
    unless self.roles.include?(role)
      self.roles << role
    end
    self.roles
  end

  def has_role? role
    role = role.to_s
    self.roles.include?(role)
  end

  def self.get_roles
    ROLES
  end

  private

    def valid_roles
      unless self.roles.all? { |role| ROLES.include?(role) }
        self.errors.add(:roles, :invalid_roles)
      end
    end
end
