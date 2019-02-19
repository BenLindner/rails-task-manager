class TasksController < ApplicationController
end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    # ^ Model#create is Model#new + instance#save
    redirect_to tasks_path
    # redirects back to index for better UX
  end
