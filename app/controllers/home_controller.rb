class HomeController < ApplicationController
  def index
  	@posts = Post.all.order('created_at DESC')
  	@title = "Algomuse"
  end

  def topic_list

    @cat = Category.where(:url_name => request.path.gsub('/','') ).first

    @posts = @cat.posts.order('created_at DESC')
  	@title = @cat.name
  end

  def searchqry

    posts = Post.where("title LIKE '%#{params[:q]}%' OR body LIKE '%#{params[:q]}%'")

    if posts.count == 0
      render :text => "0"
    else

      render partial: "cards/search_results", locals: {posts: posts }
    end

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


  def about

    @title = "About Algomuse"

  end  

  def rohan

    @title = "About Rohan Raja"

  end

  def request_tut

    @title = "Request Tutorial"
    @request_text = RequestText.new

  end

  def feedback

    @title = "Feedback"
    @request_text = RequestText.new

  end

end
