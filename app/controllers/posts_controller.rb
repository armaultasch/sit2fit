class PostsController < ApplicationController
	def index
		@posts = Post.all
		render "index"
	end
	def show
		@posts = Post.all
		render "show"
	end
	def new
		@posts = Post.new
		render "new"
	end
	def create
		@posts = Post.new(user_params)

		if @posts.save
			redirect_to "/"
		else
			render "new"
		end
	end
	
	private
	def user_params
		params.require(:post).permit(:email, :description)
	end
end
