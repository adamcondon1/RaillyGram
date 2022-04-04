class HomeController < ApplicationController
  def index
  end

  def about
  	@about_me = "Welcome to Raillygram"
  end
end
