 # app/models/admin_authorization.rb
class AdminAuthorization < ActiveAdmin::AuthorizationAdapter
  def authorized?(action, subject = nil)
    case subject
    when normalized(AdminUser)
      if action == :create || action == :destroy
        user.role?('admin')
      else
        true
      end
    else
      true
    end
  end
end