class JamsController < ApplicationController
	before_action :find_jam, only: [:show, :edit, :update, :destroy]
	def index
		@jams = Jam.all.order("created_at DESC")
	end

	def show

	end

	def new
		@jam = Jam.new
	end

	def create
		@jam = Jam.new(jam_params)

		if @jam.save
			redirect_to @jam
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @jam.update(jam_params)
			redirect_to @jam
		else
			render 'edit'
		end
	end

	def destroy
		@jam.destroy
		redirect_to root_path
	end

	private

	def find_jam
		@jam = Jam.find(params[:id])
	end

	def jam_params
		params.require(:jam).permit(:title, :location, :date, :time, :number_of_musicians, :instrument_types )
	end
end
