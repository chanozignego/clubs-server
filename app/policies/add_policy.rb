class AddPolicy < ApplicationPolicy

  def edit?
    default_behaviour
  end

  def update?
    default_behaviour
  end

  def show?
    default_behaviour
  end

  def default_behaviour
    user.present?
  end
end
