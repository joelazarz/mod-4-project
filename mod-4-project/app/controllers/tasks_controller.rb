class TasksController < ApplicationController

    def index 
        tasks = Task.all 

        render json: tasks
    end

    def new
        task = Task.new 
    end

    def create
        task = Task.create(task_params)
    end

    private

    def task_params
        params.require(:task).permit(:description, :status, :project_id)
    end


end
