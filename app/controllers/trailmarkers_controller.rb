class TrailmarkersController < ApplicationController
  def index
    @trailmarkers = Trailmarker.order('name').all
  end
  def show
    @trailmarker = Trailmarker.find(params[:id])
  end
  def new
  	@trailmarker = Trailmarker.new
  end
end
