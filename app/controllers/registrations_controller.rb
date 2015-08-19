class RegistrationsController < Devise::RegistrationsController

  def sign_up_params
    params.require(:user).permit(:name, :avatar, :email, :picture, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :avatar, :picture, :email, :password, :password_confirmation, :current_password)
  end

  def after_update_path_for(resource)
      user_path(resource)
    end
end
