class PostsController < ApplicationController
include PostsHelper
	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.author_name = current_user.email
		@post.save
		notice = "Your post was added!"
		redirect_to post_path(@post)
	end

	def show
		@post = Post.find(params[:id])

	end
end
