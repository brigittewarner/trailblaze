class Trail < ActiveRecord::Base
	belongs_to :user
  has_many :trails
end
