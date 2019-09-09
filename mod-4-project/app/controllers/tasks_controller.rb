class TasksController < ApplicationController

    def index 
        tasks = Task.all 

        render json: tasks
    end

    def new
        task = Task.new 
    end

    def show 
        task = Task.find(params[:id])

        render json: task
    end


    def create
        task = Task.create(task_params)
        render json: task
    end

    def update
        task = Task.find(params[:id])
        task.update(task_params)
    end

    private

    def task_params
        params.require(:task).permit(:id, :name, :description, :category, :project_id)
    end


end
