class TasksController < ApplicationController

  TASKS = ['Tarefa 1', 'Tarefa 2', 'Tarefa 3', 'Tarefa 4']

  def show
    tasks_id = params[:id]
    @task = TASKS[tasks_id.to_i - 1]
    render json: {task: @task}
  end

  def index
    render json: {tasks: TASKS}
  end

end
