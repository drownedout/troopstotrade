class UsersController < ApplicationController

	def new
	end

	def create
		@user = User.new(params[:user])

		@user.save
		redirect_to @user
	end

	def index
		@user = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy

		redirect_to root_path
	end

	def edit
		@user = User.find(params[:id])
	end

	private
		def user_params
			params.require(:user).permit(:name, :email, :city, :state, :zip, :phonenumber)
		end

end
