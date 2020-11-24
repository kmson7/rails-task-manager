class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    params[:id]
    @task = Task.find(params[:id])
  end
end
