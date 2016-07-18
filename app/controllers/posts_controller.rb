class PostsController < ApplicationController
	def index
		@posts = Post.all
		@post = Post.find(3)
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(content: params[:post][:content], avatar: params[:post][:avatar])
		redirect_to '/'
	end

end
