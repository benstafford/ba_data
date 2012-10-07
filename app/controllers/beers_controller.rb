class BeersController < ApplicationController
  respond_to :json

  def show
    @beer = Beer.find(params[:id])
    if @beer
      respond_with(@beer)
    else
      render :json => "Beer not found", :status => :unprocessable_entity
    end
  end
end
