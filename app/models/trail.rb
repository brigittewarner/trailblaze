class Trail < ActiveRecord::Base
	belongs_to :user
	has_many :trailmarkers, :through => :trailification

end
