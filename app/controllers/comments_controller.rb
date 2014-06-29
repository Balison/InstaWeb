class CommentsController < ApplicationController

	def create
		@picture = Picture.find(params[:picture_id])
		comment = @picture.comments.create(comment_params)
		redirect_to user_picture_path(id: @picture.id)
	end

	def destroy
		comment = Comment.find(params[:comment_id])
		comment.destroy
		redirect_to user_picture_path(id: params[:picture_id])
	end

	private
	def comment_params
		params.require(:comment).permit(:content)
	end
end
