class Badgification < ActiveRecord::Base
  belongs_to :user_id
  belongs_to :badge_id
end
