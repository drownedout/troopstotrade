class MainController < ApplicationController
  def index
  end

  def about
  end

  def database
  	@user = User.all
  end
end
