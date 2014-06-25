class PicturesController < ApplicationController

	def index
		@pictures = Picture.all
	end

	def create
		@user = User.find_by id: session[:user_id]
		@picture = Picture.new(file: params[:picture][:file], title: params[:picture][:title], user: @user)
		if @picture.save
			redirect_to controller: "instagram", action: "index"
		else
			render 'instagram/userIndex'
		end
	end


	private
	def picture_params
		params.require(:picture).permit(:file, :title)
	end
end
