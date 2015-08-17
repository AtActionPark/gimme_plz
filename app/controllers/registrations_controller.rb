class RegistrationsController < Devise::RegistrationsController

  def sign_up_params
    params.require(:user).permit(:name, :email, :picture, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :picture, :email, :password, :password_confirmation, :current_password)
  end
end
