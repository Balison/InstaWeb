class PicturesController < ApplicationController

	def index
		@user = User.find_by id: session[:user_id]
		@pictures = @user.pictures
	end

	def new
		@user = User.find_by id: session[:user_id]
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

	def show
		@picture = Picture.find(params[:id])
		@user = User.find(session[:user_id])
	end

	def destroy
		@picture = Picture.find(params[:id])
		@picture.destroy

		redirect_to user_pictures_path
	end
	private
	def picture_params
		params.require(:picture).permit(:file, :title)
	end
end
