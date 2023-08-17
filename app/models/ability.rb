# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.customer?
      can :read, Restaurant
      can :manage, Cart
    elsif user.admin?
      can :manage, Restaurant
      can :manage, Food
    else
      can :read, Restaurant
      can :read, Food
    end
  end
end
