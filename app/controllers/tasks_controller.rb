class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def index
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    @task.save
    render :show
  end

  private

  def task_params
    params.require(:task).permit(:title, :description)
  end
end
