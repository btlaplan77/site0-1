class PostsController < ApplicationController

	def post_params
		params.require(:post).permit(:title, :body)
	end
end
