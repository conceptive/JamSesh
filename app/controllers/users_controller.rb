class UsersController < ApplicationController
	
	def show
		@user = User.find(params[:id])
	end
	
	def follow
		@user = User.find(params[:id])
		if current_user
			if current_user === @user
				flash[:notice] = "You cannot follow yourself."
			else
		      current_user.follow(@user)
		      flash[:notice] = "You are now following #{@user.username}."
		  end	
		    redirect_to user_path
	    else
    		flash[:notice] = "You must login to follow other users"
  		end 
  end

  def unfollow
	  	@user = User.find(params[:id])

	  if current_user
	  	if current_user === @user
				flash[:notice] = "You cannot unfollow yourself."
			else
		    current_user.stop_following(@user)
		    flash[:notice] = "You are no longer following #{@user.username}."
		  end
		  redirect_to user_path
		  else
		    flash[:error] = "You must login to un-follow other users"
			end
	end

end