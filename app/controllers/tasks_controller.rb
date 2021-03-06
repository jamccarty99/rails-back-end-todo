class TasksController < ApplicationController
  def new
    @task = Task.new
    @task_list = Task.all
  end

  def index
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :description)
  end
end
