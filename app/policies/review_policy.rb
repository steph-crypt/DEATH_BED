class ReviewPolicy < ApplicationPolicy
  class Scope
  end

  def create?
    return true
  end

  def new?
    create?
  end

  def show?
    true
  end

end
