json.array!(@authors) do |author|
  json.extract! author, :name, :href, :imgurl, :info
  json.url author_url(author, format: :json)
end
