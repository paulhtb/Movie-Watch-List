class ListsController < ApplicationController
  before_action :set_list, except: %w[index new create]

  def index
    @lists = List.all
    @list = List.new
  end

  def show
    @bookmarks = @list.bookmarks
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @list.destroy

    redirect_to lists_path
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
