class PagesController < ApplicationController
	before_action :authenticate_user!, except: [:home]
	def home	
	end

	def musicians
		@users = User.all.order("created_at DESC").paginate(page: params[:page], per_page: 20)
	end

	def howitworks
	end
end
