class TasksController < ApplicationController

  def edit
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
  end

  def update
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])

    if @task.update_attributes(params[:task])
      redirect_to list_path(@list), notice: 'Task was succesfully updated.'
    else
      render :edit
    end
  end



  def destroy
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
    @task.delete
    redirect_to list_path(@list)
  end




end
