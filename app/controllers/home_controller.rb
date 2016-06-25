class HomeController < ApplicationController

  before_filter only: [:edit] do |c|

    if !admin_signed_in?
      redirect_to "/"
    end

  end

  def index
  	@posts = Post.where("active >= 1").order('created_at DESC')
  	@title = "Algomuse"
    @face_url = "/assets/favicon.gif"
    @meta_description = "Algomuse is a technology tutorials blog that contains tutorials and articles mainly focusing on Programming and Web development."
  end

  def topic_list

    @cat = Category.where(:url_name => request.path.gsub('/','') ).first

    @posts = @cat.posts.where("active >=1 ").order('created_at DESC')
  	@title = @cat.name + " Tutorials"
    @meta_description = "Algomuse is a technology tutorials blog that contains tutorials and articles mainly focusing on Programming and Web development."

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
    # @post.body = @post.body.gsub("<pre>", "")
    # @post.body = @post.body.gsub("</pre>", "")
    # @post.body = @post.body.gsub("<code", "<pre><code")
    # @post.body = @post.body.gsub("</code>", "</code></pre>")
    @post.body = coderay(@post.body)
  	@title = @post.title
    @face_url = "/assets/post_imgs/#{@post.imgurl}"
    @meta_description = @post.brief

  end

  def edit

  	@post = Post.find(1)
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

  def snippets

    @post = Post.last

    @title = "Snippets"

  end

  def get_snip

     @post = Post.find(params[:pid])
     @post.body = (@post.sniptext)

     render :text => ( @post.body.gsub(/^\s*[^<].*/, '<p class="extra_p">\&</p>'))

  end

  def searchsnip
    
    posts = Post.where("title LIKE '%#{params[:q]}%' OR sniptext LIKE '%#{params[:q]}%'").limit(7)

    if posts.count == 0
      render :text => "0"
    else

      render partial: "cards/sniplist", locals: {posts: posts }
    end


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
