require 'paapi'
require 'open-uri'
@client = Paapi::Client.new(
  access_key: ENV["AMAZON_APIKEY"],
  secret_key: ENV["AMAZON_SECRETKEY"],
  market: :jp,
  partner_tag: ENV["AMAZON_ASSOCIATE_TAG"]
)

ids = [
  ['B07DW8FHV4', 25, 'https://amzn.to/2H6daex', nil],
  ['B0868JPT8W', 34, 'https://amzn.to/3f9pXcs', 'https://hb.afl.rakuten.co.jp/ichiba/1dab9b6b.3d9810f0.1dab9b6c.a029a8fd/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fbccosme%2F2020030302%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  # ['B07YSW4CWQ', 35, 'https://www.amazon.com/Ere-Perez-Natural-Vegan-Beauty/dp/B07YSW4CWQ', nil],
  ['B07FKDN2R2', 42, 'https://amzn.to/3nxH2A8', 'https://item.rakuten.co.jp/someibeauty/716170165875/']
]

ids.each do |id|
  response = @client.get_items(item_ids: id[0])
  items = response.items

  items.each do |item|
    name = item.title #商品名
    url = item.image_url #画像
    file = "#{Rails.root}/db/2020amazon_item/#{id[1]}.png"
    open(file, 'wb') do |pass|
      open(url) do |recieve|
        pass.write(recieve.read)
      end
    end

    price = ""
    if item.listings.present?
      item.listings.each do |listing|
        price = listing.price["Amount"] #価格
      end
    else
      price = nil
    end

    Item.create!(
      name: name,
      item_number: id[1],
      image: open("#{Rails.root}/db/2020amazon_item/#{id[1]}.png"),
      price: price,
      amazon_url: id[2],
      rakuten_url: id[3],
      asin: id[0]
    ) if Item.find_by(asin: id[0]).blank?
  end

end