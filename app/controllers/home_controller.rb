class HomeController < ApplicationController
  def index
  	@posts = Post.all
  	@title = "Tutorials Villa"
  end

  def topic_list

    @cat = Category.where(:url_name => request.path.gsub('/','') ).first

    @posts = @cat.posts
  	@title = @cat.name
  end

  def post
    
    @post = Post.where(:urltext => params[:posturl]).first
  	@post.body = coderay(@post.body)
  	@title = @post.title

  end

  def edit

  	@post = Post.find(1)
  	@post.body = coderay(@post.body)
  	@title = @post.title

  end

end
