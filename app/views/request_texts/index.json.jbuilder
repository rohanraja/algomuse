json.array!(@request_texts) do |request_text|
  json.extract! request_text, :name, :email, :website, :body, :ip
  json.url request_text_url(request_text, format: :json)
end
