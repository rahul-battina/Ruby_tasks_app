class HomeController < ApplicationController

  skip_before_action :verify_authenticity_token

  def showTasks
    render json: Task.all
  end

  def taskByid
    render json: Task.find(params[:id])
  end

  def updateTask
    req = Task.find(params[:id])
    req.update(tasktitle: params[:taskTitle], comp: params[:comp])
    render json: "task updated"

  end

  def deleteTask
    req = Task.find(params[:id])
    req.destroy
    render json: "task Deleted"
  end

  def addNewTask
    newtask = Task.new(params.permit(:taskTitle, :comp))
    newtask.save
    render json: "Task added."
  end


end
