class StaticPagesController < ApplicationController

  before_action :authenticate_user!, :only => :newProject
  before_action :admin_user, :only => :selection

  def home
    @projects = []
    for s in Selection.all do
      @projects << Project.find(s.project_id) if Project.exists?(s.project_id)
    end
  end

  def selection
    @selection = Selection.all
    if !selection_params[:add].nil?
      if Project.exists?(selection_params[:add])
        Selection.create(project_id: selection_params[:add])
      end
    end

    if !selection_params[:remove].nil?
      if Selection.where("project_id = ?", selection_params[:remove]).exists?
        Selection.where("project_id = ?", selection_params[:remove]).take().destroy
      end
    end
  end

  def create
  end

  def help
  end

  def who
  end

  def team
  end

  def conditions
  end

  def faq
  end

  def assistance
  end

  def contact
  end

  def newProject
    @project = current_user.projects.build 
  end

  private
    def selection_params
      params.permit(:add, :remove)
    end

    # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless user_signed_in? && current_user.admin?
    end

end
