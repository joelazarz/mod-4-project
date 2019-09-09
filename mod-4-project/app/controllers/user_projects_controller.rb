class UserProjectsController < ApplicationController

  def index
    user_projects = UserProject.all

    render json: user_projects
  end

  def new
    user_project = UserProject.new
  end

  def create
    user_project = UserProject.create(user_project_params)
    render json: user_project
  end

  private

  def user_project_params
      params.require(:user_project).permit(:user_id, :project_id)
  end
end
