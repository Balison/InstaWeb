class UsersController < ApplicationController

	def new	
	end
	def index
		@users = User.all
	end
	def create
		user = User.new(user_params)
		
		if user.save
			session[:user_id] = user.id
		end	
		redirect_to controller: :instagram, action: :index
	end

	def show
		@user = User.find(params[:id])
	end	

	def destroy
		user = User.find(params[:id])
		user.destroy

		redirect_to users_path
	end

	private
	def user_params
		params.require(:user).permit(:name, :password)
	end
end
