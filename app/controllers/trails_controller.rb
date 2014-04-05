class TrailsController < ApplicationController
  def show
    @trail = Trail.find(params[:id])
  end
  def new
  	@trail = Trail.new
  end
end
