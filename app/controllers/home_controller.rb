class HomeController < ApplicationController
  def index
  	@post = Post.find(2)
  	@title = @post.title
  end

  def post

  	@post = Post.find(1)
  	@post.body = coderay(@post.body)
  	@title = @post.title

  end

end
