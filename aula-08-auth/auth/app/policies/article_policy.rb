class ArticlePolicy < ApplicationPolicy
  def update?
    user&.admin? || user&.id == record.user_id
  end

  def destroy?
    user&.admin? || user&.id == record.user_id
  end

  def new?
    create?
  end

  def create?
    user&.has_role? :writer
  end


  def edit?
    update?
  end

  class Scope < ApplicationPolicy::Scope 
    def resolve
      scope.all
    end
  end
end
