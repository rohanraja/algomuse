class HomeController < ApplicationController
  def index
  	@post = Post.find(1)
  	@title = @post.title
  end

  def post

  	@post = Post.find(1)
  	@title = @post.title

  end

end
