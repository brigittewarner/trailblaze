class BadgesController < ApplicationController
  def index
    @badges = Badge.order('name').all
  end
end
