class ReviewPolicy < ApplicationPolicy
  class Scope
  end

  def create?
    return true
  end

  def new?
    create?
  end

  def destroy?
    record.user == user
  end

end
