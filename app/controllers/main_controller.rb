class MainController < ApplicationController
  def index
  end

  def about
  end

  def database
  	if org_signed_in?
  		@user = User.all
  	else
  		redirect_to root_path
  	end
  end
end
