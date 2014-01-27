xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Your Blog Title"
    xml.description "A blog about software and chocolate"
    xml.link posts_url

    for post in @posts
      xml.item do
        xml.title post.title
        xml.description post.brief
        xml.pubDate post.created_at.to_s(:rfc822)
        xml.link ("/" + post.categories.first.url_name + "/" + post.urltext)
        xml.guid ("/" + post.categories.first.url_name + "/" + post.urltext)
      end
    end
  end
end