class Trailmarker < ActiveRecord::Base
  has_one :trail, :through => :trailification
end
