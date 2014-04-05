class TrailsController < ApplicationController
  def index
    @trails = Trail.order('name').all
  end
  def show
    @trail = Trail.find(params[:id])
  end
  def new
  	@trail = Trail.new
  end
end
