class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

    #start TMC add for active admin bug
	ActiveAdmin.register User do
	  remove_filter :user_roles
	end
	#end TMC add for active admin bug
end
