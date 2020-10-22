require 'paapi'

@client = Paapi::Client.new(
  access_key: ENV["AMAZON_APIKEY"],
  secret_key: ENV["AMAZON_SECRETKEY"],
  market: :jp,
  partner_tag: ENV["AMAZON_ASSOCIATE_TAG"]
)

ids = [
  ['B07WR6GXN9', 1, 7, 'https://amzn.to/2TimJcE'],
  ['B00L87WZCU', 2, 7, 'https://amzn.to/2HfBvib'],
  ['B01J1ZBJSG', 3, 7, 'https://amzn.to/35riD7A'],
  ['B01GPFDCF8', 4, 7, 'https://amzn.to/3dNHtT7'],
  ['B07VWPRBDH', 5, 7, 'https://amzn.to/3kpq6dN'],
]

ids.each do |id|
  response = @client.get_items(item_ids: id[0])
  items = response.items

  items.each do |item|
    name = item.title #商品名

    url = item.image_url #画像
    file = "#{Rails.root}/db/images/item_image/#{id[1]}.png"
    open(file, 'wb') do |pass|
      open(url) do |recieve|
        pass.write(recieve.read)
      end
    end

    price = ""
    item.listings.each do |listing|
      price = listing.price["Amount"] #価格
    end

    Item.create!(
      name: name,
      image: open("#{Rails.root}/db/images/item_image/#{id[1]}.png"),
      price: price,
      post_id: id[2],
      amazon_url: id[3],
      asin: id[0]
    )
  end

end