class ArticlePolicy < ApplicationPolicy
  def update?
    user&.admin? || user&.id == record.user_id
  end

  def destroy?
    user&.admin? || user&.id == record.user_id
  end

  class Scope < ApplicationPolicy::Scope 
    def resolve
      scope.all
    end
  end
end
