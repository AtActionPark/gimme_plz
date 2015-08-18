class ProjectsController < ApplicationController
  before_action :correct_user, only: [:edit, :update]

  def create
    @project = current_user.projects.build(project_params)
    if @project.save
      flash[:success] = "project created!"
      redirect_to root_url
    else
      render :new
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      flash[:success] = "Project updated"
      redirect_to @project
    else
      render 'edit'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def destroy
  end

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end


  private
    def project_params
      params.require(:project).permit(:title, :picture, :presentation, :objective, :description)
    end

    def correct_user
      @user = Project.find(params[:id]).user
      redirect_to(root_url) unless current_user == @user
    end
end
