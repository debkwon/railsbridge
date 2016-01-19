class RepliesController < ApplicationController
	def create
		@reply = Reply.new(reply_params)
		@reply.post_id = params[:post_id]
		@reply.save
		redirect_to post_path(@reply.post_id)
	end

	def reply_params
		params.require(:reply).permit(:author_name, :body)
	end

end
