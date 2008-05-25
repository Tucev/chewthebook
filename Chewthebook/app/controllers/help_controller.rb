class HelpController < ApplicationController
  include AuthenticatedSystem
  # If you want "remember me" functionality, add this before_filter to Application Controller
  #before_filter :login_from_cookie
  before_filter :login_required
  
  def index
  end

  def tour
  end
end
