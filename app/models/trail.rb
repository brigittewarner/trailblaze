class Trail < ActiveRecord::Base
	belongs_to :user
	belongs_to :initiation
  has_many :trailmarkers, :through => :trailification

end
