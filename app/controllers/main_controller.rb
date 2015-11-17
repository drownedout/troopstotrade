class MainController < ApplicationController
  def index
  end

  def about
  end

  def database
  	if org_signed_in?
  		@user = User.page(params[:page]).per(25)
  	else
  		redirect_to root_path
  	end
  end
end
