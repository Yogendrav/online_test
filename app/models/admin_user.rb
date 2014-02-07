class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  ROLES = %w[admin hr]
  def role?(base_role)
  	return false unless role || self.new_record?
	  ROLES.index(base_role.downcase.to_s) == ROLES.index(role.downcase.to_s)
  end
end
