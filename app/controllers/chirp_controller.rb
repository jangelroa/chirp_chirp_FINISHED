class ChirpController < ApplicationController

	def index
		@chirps = Chirp.order(created_at: :desc)
		render "index"
	end

	def create_a_new_chirp
		image = rand(4)+1
		Chirp.create(image: image, twit: params[:twit])
		redirect_to "/"
	end

	def edit
		@chirp = Chirp.find(params[:id])
		render "edit"
	end

	def update_or_delete
		chirp = Chirp.find(params[:id])
		if params[:delete_button]    
		# DELETE
			chirp.destroy
		else												 
		# UPDATE
			chirp.update(twit: params[:twit])
			# chirp.update(image: chirp.image, twit: params[:twit])
		end
		redirect_to "/"
	end


end
