class PostPolicy < ApplicationPolicy
  attr_accessor :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end

  def publish?
    @user.editor?
  end

  def create?

  end

  # def edit?
  #   @user.editor? || @user.author?
  # end

  def update?
    @user.editor?
  end

  def destroy?
    @user.editor?
  end
end



# class PostPolicy
#   attr_accessor :user, :post

#   def initialize(user, post)
#     @user = user
#     @post = post
#   end

#   def publish?
#     @user.role == "editor"
#   end
# end
