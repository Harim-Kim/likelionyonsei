class PlainpageController < ApplicationController

  def index
    # @site =Site.all
  end
  
  def accounting
    @account = Account.all
  end

end
