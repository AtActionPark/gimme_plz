class StaticPagesController < ApplicationController
  def home
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
end
