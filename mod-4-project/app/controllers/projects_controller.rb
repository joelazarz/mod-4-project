class ProjectsController < ApplicationController

    def index 
        projects = Project.all 

        render json: projects
    end

    def show
        project = Project.find(params[:id])

        render json: project
    end

    def new
        project = Project.new 
    end

    def create
        project = Project.create(project_params)
        render json: project
    end

    def edit 
        project = Project.find(params[:id])
    end

    def update
        project = Project.update(project_params)
    end

    private

    def project_params
        params.require(:project).permit(:name, :description, :repo_link, :languages, :user_id)
    end


end
