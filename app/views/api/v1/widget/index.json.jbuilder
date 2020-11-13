json.categories do
  json.array!(@first_categories) do |category|
    json.name category.name
    json.second_categories do
      json.array! Category.where(ancestry: category.id) do |second_category|
        json.name second_category.name
        json.third_categories Category.where(ancestry: "#{category.id}/#{second_category.id}")
      end
    end
  end
end