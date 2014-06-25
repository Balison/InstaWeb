class InstagramController < ApplicationController
  def index
  	@user = User.find_by name: params[:username]
  	@params = params
  	if (@user)
	  	if @user.password == params[:password]
	  		session[:user_id] = @user.id
	  	end
	end

  	if session[:user_id]
  		@user = User.find_by id: session[:user_id]
  		render "userIndex"
  	end
  end

  def closeSession
  	session[:user_id] = nil
  	redirect_to controller: "instagram", action: "index"
  end
end
