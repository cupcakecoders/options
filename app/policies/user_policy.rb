class UserPolicy < ApplicationPolicy

  def index
  end

  def show?
    user.company_id == record.company_id
  end

  def new?

  end

  def create?

  end

  def edit?

  end

  def update?

  end

  def destroy?

  end

end
