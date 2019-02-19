class TasksController < ApplicationController
  def tasks
  end

  def index
    @tasks = Task.all
  end

  def add
    @task = Task.new
  end

  def details
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    task_path
  end

  private

  def task_params
    # this permits name, address, and rating to be passed on when creating a form and nothing else so that hackers can't just come in and add info to give themselves more permissions within your application.
    params.require(:task).permit(:title, :details, :completed)
  end
end


