require 'paapi'
require 'open-uri'
@client = Paapi::Client.new(
  access_key: ENV["AMAZON_APIKEY"],
  secret_key: ENV["AMAZON_SECRETKEY"],
  market: :jp,
  partner_tag: ENV["AMAZON_ASSOCIATE_TAG"]
)

ids = [
  ['B07MTV5KF7', 16, 'https://amzn.to/3lzdQbd', 'https://hb.afl.rakuten.co.jp/ichiba/1da50a10.daadae17.1da50a11.1806c2af/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fetvos%2Fcr10252-000%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  ['B07GXJ2G8C', 17, 'https://amzn.to/38fAXnh', 'https://hb.afl.rakuten.co.jp/ichiba/1da50f72.2d4a9533.1da50f73.1a5769a9/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fblanc-lapin%2Fysllc0000027%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  ['B07L5QX178', 18, 'https://amzn.to/32jqMup', 'https://hb.afl.rakuten.co.jp/ichiba/1da50f72.2d4a9533.1da50f73.1a5769a9/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fblanc-lapin%2Ftomjs0100014%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9']
]

ids.each do |id|
  response = @client.get_items(item_ids: id[0])
  items = response.items

  items.each do |item|
    name = item.title #商品名
    # url = item.image_url #画像
    # file = "#{Rails.root}/db/images/item_image/#{id[1]}.png"
    # open(file, 'wb') do |pass|
    #   open(url) do |recieve|
    #     pass.write(recieve.read)
    #   end
    # end

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
      image: open("#{Rails.root}/db/2020amazon_item/#{id[1]}.png"),
      price: price,
      amazon_url: id[2],
      rakuten_url: id[3],
      asin: id[0]
    ) if Item.find_by(asin: id[0]).blank?
  end

end