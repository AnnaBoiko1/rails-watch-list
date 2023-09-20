class ListsController < ApplicationController
  def index
    @lists = List.all
    @list  = List.new
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  def new
    @list = List.new
    @lists = List.all
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unproccessable_entity
    end
  end

  def destroy
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
