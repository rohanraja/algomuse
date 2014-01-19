class HomeController < ApplicationController
  def index
  end

  def post

  	@post = Post.find(1)
  	@title = @post.title

  end

end
