class TasksController < ApplicationController
  before_action :find_task, only: [:destroy, :update, :edit, :show]

  def index
    @tasks = Task.all
  end

  def show
    @params = params
    # @task = Task.find(params[:id])
    if @task.completed
      @message = 'Task is completed'
    else
      @message = 'Task is not completed yet'
    end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save!
    redirect_to task_path(@task)
  end

  def edit
    # @task = Task.find(params[:id])
  end

  def update
    # @task = Task.find(params[:id])
    # checked = params[:checked]
    # @task.update(completed: true) if checked == 1
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    # @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
