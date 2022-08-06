class ListsController < ApplicationController
  def new
    @list_new  = List.new
  end

  def create
    @list_new = List.new(list_params)
    if @list_new.save
     redirect_to lists_path
    else
      render :new
    end
  end

  def show
    @list = List.find(params[:id])
  end

  def index
    @lists = List.all
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    @list.update(list_params)
    redirect_to list_path(@list.id)
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to lists_path
  end

  private
   def list_params
     params.require(:list).permit(:title, :body, :image)
   end
end
