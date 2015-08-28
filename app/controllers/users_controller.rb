class UsersController < ApplicationController

  before_action :authenticate_user!, :except => :new
  before_action :admin_user,     only: [:destroy, :index]

  def new
  end

  def index
    @users = User.all
  end


  def show
     @user = User.find(params[:id])
     @projects = @user.projects
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = I18n.t('user_deleted')
    redirect_to users_url
  end

  def addAdmin
    User.find(params[:id]).update_attribute('admin', true);
    redirect_to users_url
  end

  def removeAdmin
    User.find(params[:id]).update_attribute('admin', false);
    redirect_to users_url
  end


  private

    # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless user_signed_in? && current_user.admin?
    end
end
