class Trail < ActiveRecord::Base
	belongs_to :user
	belongs_to :initiation
  	has_many :trailmarkers, :through => :trailification

  	after_create do |trail|
  		puts "Congratulations, you have earned the Trailblazer Badge!"
  		unless @current_user.id == Badgification.find(badge.id).user_id
  			redirect_to @trail, success: "Your #{@trail.name} trail has been created!"
  		end 		
  	end
end
