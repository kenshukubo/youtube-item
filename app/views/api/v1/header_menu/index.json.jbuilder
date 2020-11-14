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

json.children_categories do
  json.array!(@children_categories) do |category|
    json.image category.image.url
    json.name  category.name
    json.id    category.id
  end
end