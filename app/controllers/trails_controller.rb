class TrailsController < ApplicationController
	def new
    	@trail = Trail.new
  	end
end
