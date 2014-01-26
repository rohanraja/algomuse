class HomeController < ApplicationController
  def index
  	@post = Post.find(2)
  	@title = @post.title
  end

  def topic_list

    cat = Category.where(:url_name => request.path.gsub('/','') ).first

    # Category.all.each do |c|

    #   if c.name.parameterize == request.path.gsub('/','')

    #     cat = c

    #   end

    # end

  	@post = Post.find(1)
  	@title = cat.name
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
