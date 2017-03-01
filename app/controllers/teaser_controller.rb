class TeaserController < ApplicationController
  helper_method :mobile_device?
  
  layout 'teaser'
  def index
  end
  
  def mobile_device?
    if session[:mobile_param]
      session[:mobile_param] == "1"
    else
      request.user_agent =~ /Mobile|webOS/
    end
  end
end
