class CommentsController < ApplicationController
	before_action :authenticate_user!
	
	def create
		@jam = Jam.find(params[:jam_id])
		@comment = Comment.create(params[:comment].permit(:content))
		@comment.user_id = current_user.id
		@comment.jam_id = @jam.id

		if @comment.save
			redirect_to jam_path(@jam)
		else
			render 'new'
		end
	end
end
