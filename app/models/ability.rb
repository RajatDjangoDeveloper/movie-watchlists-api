# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :create, Friend
    can(:read, Friend, user:)
    can(:update, Friend, user:)
    can(:read, Friend, user:)
    can :manage, :all if user.admin?
  end
end
