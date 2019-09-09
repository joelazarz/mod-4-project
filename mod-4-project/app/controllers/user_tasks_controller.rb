class UserTasksController < ApplicationController

  def index
    user_tasks = UserTask.all

    render json: user_tasks
  end

  def new
    user_task = UserTask.new
  end

  def create
    user_task = UserTask.create(user_task_params)
    render json: user_task
  end

  private

  def user_task_params
      params.require(:user_task).permit(:user_id, :task_id)
  end
end
