class BookPolicy
  attr_reader :user, :book

  def initialize(user, book)
    @user = user
    @book = book
  end

  def destroy?
    user.admin?
  end

end