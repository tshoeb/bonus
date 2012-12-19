class Ability < ActiveRecord::Base
  include CanCan::Ability

  def initialize(user)
  	user ||= User.new #guest user

  	if user.admin?
  		can :manage, :all
  	else
    	can :read, :all
    	can :create, Property
      #giving error
      
    	#can :update, Property do |property|
    	#	property.try(:owner_id) == @user.id || property.try(:manager_id) == @user.id
    	#end
      can :update, :all
    	can :destroy, Property do |property|
    		property.try(:owner_id) == @user.id
    	end
    end
  end
end
