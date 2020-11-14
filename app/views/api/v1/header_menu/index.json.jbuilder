json.categories do
  json.array!(@first_categories) do |category|
    json.id   category.id
    json.name category.name
    json.second_categories do
      json.array! Category.where(ancestry: category.id) do |second_category|
        json.id   second_category.id
        json.name second_category.name
        json.third_categories Category.where(ancestry: "#{category.id}/#{second_category.id}")
      end
    end
  end
end

json.post_categories do
  json.array!(@post_categories) do |category|
    json.id    category.id
    json.name  category.name
    json.image category.image.url
  end
end