# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      can :read, User, id: user.id
      if user.branch_manager?
        can :manage, :all
      end
    end
  end
end
