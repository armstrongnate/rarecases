class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :correct_domain!

  def correct_domain!
      unless request.host == 'www.rarecases.com'
        redirect_to root_url, :status => 301  # or explicitly 'http://www.mysite.com/'
      end
    end
end
