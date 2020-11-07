json.categories do
  json.array!(@categories) do |category|
    json.image category.image.url
    json.name  category.name
    json.id    category.id
  end
end