class Initiation < ActiveRecord::Base
  belongs_to :user
  belongs_to :trail
end
