class RentalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def confirm?
    record.user == user
  end

  def update?
    record.user == user || record.product.user == user
  end

  def destroy?
    record.user == user || record.product.user == user
  end
end
