class Trailification < ActiveRecord::Base
  belongs_to :trail
  belongs_to :trailmarker
end
