class ArticlePolicy < ApplicationPolicy
  def update?
    user&.has_role?(:editor) || user&.id == record.user_id || user&.admin?
  end

  def destroy?
    user&.has_role?(:editor) || user&.id == record.user_id || user&.admin?
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
