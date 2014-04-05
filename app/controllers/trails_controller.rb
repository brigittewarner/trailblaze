class TrailsController < ApplicationController
	def new
    	@trails = Trails.new
  	end
end
