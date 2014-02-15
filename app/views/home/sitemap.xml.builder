xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do

  xml.url do
    xml.loc "http://algomuse.com"
    xml.priority 1.0
  end

  xml.url do
    xml.loc "http://algomuse.com/about"
    xml.priority 1.0
  end

  xml.url do
    xml.loc "http://algomuse.com/rohan"
    xml.priority 1.0
  end


  xml.url do
    xml.loc "http://algomuse.com/request"
    xml.priority 0.5
  end


  xml.url do
    xml.loc "http://algomuse.com/feedback"
    xml.priority 0.5
  end



  @categories.each do |category|
    xml.url do
      xml.loc "http://algomuse.com" + category.link
      xml.priority 0.9
    end
  end

  @posts.each do |post|
    xml.url do
      xml.loc "http://algomuse.com" + post.link
      xml.lastmod post.updated_at.to_date
      xml.priority 0.9
    end
  end

end