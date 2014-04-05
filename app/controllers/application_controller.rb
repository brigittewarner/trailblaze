class ApplicationController < ActionController::Base
  include SessionsHelper
  protect_from_forgery with: :exception
  
  def handle_unverified_request
    sign_out
    super
  end
end
