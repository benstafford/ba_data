class ListsController < ApplicationController
  respond_to :json

  def index
    @lists = List.all

    respond_with(@lists)
  end

  def show
    @list = List.find(params[:id])

    respond_with(@list)
  end
end
