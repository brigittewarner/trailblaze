class Trail < ActiveRecord::Base
	belongs_to :user
	has_many :trailmarkers, :through => :trailification

  	after_create do |trail|
  		puts "Congratulations, you have earned the Pioneer Badge!"
  		unless @current_user.id == Badgification.find(badge.id).user_id
  			redirect_to @trail, success: "Your #{@trail.name} trail has been created!"
  		end 		
  	end
end
