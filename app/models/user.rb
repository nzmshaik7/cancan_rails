class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable




	def is_publisher?
		user_type == 'publisher'		 
	end

	def is_admin?
		user_type == "admin"
	end


end
