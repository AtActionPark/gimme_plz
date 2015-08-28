class ProjectsController < ApplicationController
  before_action :correct_user, only: [:edit, :update]

  def create
    @project = current_user.projects.build(project_params)
    if @project.save
      flash[:success] = I18n.t('project_created')
      redirect_to root_url
    else
      render :new
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      flash[:success] = I18n.t('project_updated')
      redirect_to @project
    else
      render 'edit'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def destroy
    Project.find(params[:id]).destroy
    flash[:success] = I18n.t('project_deleted')
    redirect_to projects_path
  end

  def index
    @filterrific = initialize_filterrific(
      Project,
      params[:filterrific],
      select_options:{
        with_category: Project.options_for_category
      }
    ) or return
    
    @projects = @filterrific.find.page(params[:page])

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @project = Project.find(params[:id])
    @contributors = @project.contributors
    @remainingtime = @project.remainingTime
  end

  private
    def project_params
      params.require(:project).permit(:title, :mainpicture, :presentation, :objective, :timelimit, :description, :category)
    end

    def correct_user
      @user = Project.find(params[:id]).user
      redirect_to(root_url) unless user_signed_in? && (current_user == @user || current_user.admin?)
    end

end
