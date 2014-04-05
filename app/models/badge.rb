class Badge < ActiveRecord::Base
  has_many :users, :through => :badgification
end
