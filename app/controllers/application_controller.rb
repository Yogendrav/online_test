class ApplicationController < ActionController::Base
  protect_from_forgery
  #before_filter :authenticate_user!, unless: :admin_controller
  private
 #  def admin_controller?
	# 	self.kind_of?(ActiveAdmin::BaseController) || self.kind_of?(ActiveAdmin::Devise::SessionsController)
	# end
end
