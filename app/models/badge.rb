class Badge < ActiveRecord::Base
  has_many :badgifications
  has_many :users, :through => :badgification

  def assign_badge

  end

end
