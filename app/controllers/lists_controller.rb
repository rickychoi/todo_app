class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params[:list])

    respond_to do |format|
      if @list.save
        format.html { redirect_to lists_path, notice: 'List was successfully created.' }
      end
    end

  end

  def show
    @list = List.find(params[:id])
  end


  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    @list.update_attributes(params[:list])

    respond_to do |format|
      if @list.save
        format.html { redirect_to lists_path, notice: 'List was successfully saved.' }
      end
    end

  end

  def destroy
    List.delete(params[:id])
    redirect_to lists_path
  end



end
