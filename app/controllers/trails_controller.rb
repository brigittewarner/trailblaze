class TrailsController < ApplicationController
  def index
    @trails = Trail.order('id').all
  end
  def show
    @trail = Trail.find(params[:id])
  	@user = @trail.user
  end
  def new
  	@trail = Trail.new
  end
  def create
		@trail = Trail.new(trail_params)
		if @trail.save
			redirect_to trails_path, notice: "Trail #{@trail.name} was created"
		else
			render 'new'
		end
	end
  def edit
		@trail = Trail.find(params[:id])
		@user = @trail.user
    @trailmarkers = Trailmarker.order('name').all
  end
  def update
		@trail = Trail.find(params[:id])
		if @trail.update(trail_params)
			redirect_to trails_path, notice: "Trail #{@trail.name} was updated"
		else
			render 'edit'
		end
	end
	def destroy
		@trail = Trail.find(params[:id])
		@trail.destroy
		redirect_to trails_path, notice: "Trail #{@trail.name} was deleted"
	end
	protected
	def trail_params
		params.require(:trail).permit!
	end
end
