class Ability
  include CanCan::Ability

  def initialize user
    can :read, User
    can :manage, Board do |board|
      board.user_id == user.id
    end
  end
end