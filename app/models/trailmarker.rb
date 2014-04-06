class Trailmarker < ActiveRecord::Base
  belongs_to :trail, :through => :trailification
end
