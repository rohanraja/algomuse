json.array!(@subs_emails) do |subs_email|
  json.extract! subs_email, :email
  json.url subs_email_url(subs_email, format: :json)
end
