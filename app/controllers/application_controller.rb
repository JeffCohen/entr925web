class ApplicationController < ActionController::Base
  protect_from_forgery

  # rescue_from Exception, with: :yikes


  def yikes
    redirect_to root_url
  end
end
