class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all # permissions for every user, even if not logged in    
    if user.present?  # additional permissions for logged in users (they can manage their posts)
      can :manage, Artical, user_id: user.id 
      can :update, Artical if user.is_admin?
      if user.is_publisher?  # additional permissions for administrators
        can :manage, :all
      end
    end
  end
end

  # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
