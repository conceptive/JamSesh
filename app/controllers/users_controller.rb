class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

	def profile
		@user = User.find_by_username(params[:username])
	end
end