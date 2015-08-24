class UsersController < ApplicationController
	def show
  	@user = User.find(params[:id])
  	@skill_level = SkillLevel.find_by(name: params[:skill_level])
	end
end