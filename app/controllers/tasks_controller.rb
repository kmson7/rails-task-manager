class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    params[:id]
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to index_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :complete)
  end
end
