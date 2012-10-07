class BeersController < ApplicationController
  respond_to :json, :html

  def show
    @beer = Beer.find(params[:id])
    respond_with(@beer)
  end
end
