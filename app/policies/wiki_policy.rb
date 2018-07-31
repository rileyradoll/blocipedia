class WikiPolicy < ApplicationPolicy

  def destroy?
    user.admin? || (record.user == user)
  end
end
