class Employees::RegistrationsController < Devise::RegistrationsController

  def update_resource(resource, params)
    resource.update_with_password(sign_up_edit_params)
  end

  def sign_up_edit_params
    params.require(:employee).permit( :name, :salary, :image, :email, :password, :password_confirmation, :current_password)
  end

end
