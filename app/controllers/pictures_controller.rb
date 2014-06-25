class PicturesController < ApplicationController

	def index
		@pictures = Picture.all
	end

	def create
		user = User.find_by id: session[:user_id]
		picture = Picture.create(file: params[:file], title: params[:title], user: user)
		redirect_to controller: "instagram", action: "index"
	end


	private
	def picture_params
		params.require(:picture).permit(:file, :title)
	end
end
