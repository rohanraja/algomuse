json.array!(@categories) do |category|
  json.extract! category, :name, :logo_file, :field
  json.url category_url(category, format: :json)
end
