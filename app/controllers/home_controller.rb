class HomeController < ApplicationController
  def index
  	@posts = Post.all.order('created_at DESC')
  	@title = "Tutorials Villa"
  end

  def topic_list

    @cat = Category.where(:url_name => request.path.gsub('/','') ).first

    @posts = @cat.posts.order('created_at DESC')
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

  def feed
    @posts = Post.all

    render :template => 'home/feed.rss.builder', :layout => false

  end

  def sitemap
    @posts = Post.all
    @categories = Category.all

  end

  def getdata

    Post.last.update(:body => params[:data] )

    redirect_to edit_post_path(Post.first)
  end

end
