class PagesController < ApplicationController
  def home
  	@title = "Home"
  end

  def about
  	@title = "About us"
  end

  def contact
  	@title = "Contact us"
  end

  def privacy
  	@title = "Privacy Policy"
  end
end
