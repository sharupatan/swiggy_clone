# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
   
    can :read, Restaurant
    can :read, Food
    
    if user.admin?
      can :manage, Restaurant
      can :manage, Food
    end
  end
end
