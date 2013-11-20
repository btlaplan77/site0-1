class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(post_params)
		respond_to do |format|
			if @post.save
				format.html { redirect_to posts_path }
			else
				format.html { redirect_to new_post_path }
			end
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :body)
	end
end
