xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do

  xml.url do
    xml.loc "http://www.mysite.com"
    xml.priority 1.0
  end

  @categories.each do |category|
    xml.url do
      xml.loc "http://www.mysite.com" + category.link
      xml.priority 0.9
    end
  end

  @posts.each do |post|
    xml.url do
      xml.loc "http://www.mysite.com" + post.link
      xml.lastmod post.updated_at.to_date
      xml.priority 0.9
    end
  end

end