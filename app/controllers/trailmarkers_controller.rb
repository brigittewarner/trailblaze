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
  def create
		@trail = Trailmarker.new(trailmarker_params)
		if @trailmarker.save
			redirect_to trailmarkers_path, notice: "Trailmarker #{@trailmarker.name} was created"
		else
			render 'new'
		end
	end
  def edit
		@trailmarker = Trailmarker.find(params[:id])
  end
  def update
		@trailmarker = Trailmarker.find(params[:id])
		if @trailmarker.update(trailmarker_params)
			redirect_to trailmarkers_path, notice: "Trailmarker #{@trailmarker.name} was updated"
		else
			render 'edit'
		end
	end
	def destroy
		@trailmarker = Trailmarker.find(params[:id])
		@trailmarker.destroy
		redirect_to trailmarkers_path, notice: "Trailmarker #{@trailmarker.name} was deleted"
	end
	protected
	def trailmarker_params
		params.require(:trailmarker).permit!
	end
end
