require 'paapi'
@client = Paapi::Client.new(
  access_key: ENV["AMAZON_APIKEY"],
  secret_key: ENV["AMAZON_SECRETKEY"],
  market: :jp,
  partner_tag: ENV["AMAZON_ASSOCIATE_TAG"]
)

ids = [
  ['B01G6IEF50', 11, 'https://amzn.to/2I0YIFb', 'https://hb.afl.rakuten.co.jp/ichiba/1da6af6a.190d9eca.1da6af6b.a196e5e2/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fcinderellabeaute%2Ffr-blwd-6awh%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  ['B019MARIVM', 12, 'https://amzn.to/2IbD3tJ', 'https://hb.afl.rakuten.co.jp/ichiba/1da6af1f.70b34288.1da6af20.73bddad2/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fcosmelink%2F3614270141584%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  ['B0758DFCW8', 13, 'https://amzn.to/32jklYh', 'https://hb.afl.rakuten.co.jp/ichiba/1da6af7e.4485bd9f.1da6af7f.80d5da6d/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fswishpop%2Fi0085160%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  ['B01JR1PWA0', 14, 'https://amzn.to/365ujgO', 'https://hb.afl.rakuten.co.jp/ichiba/1da6af30.08c60a3f.1da6af31.d0eb274f/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fcosmeland%2F270672%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  ['B07GQ9NH3B', 15, 'https://amzn.to/32jknPT', 'https://hb.afl.rakuten.co.jp/ichiba/1da6afa7.629b601b.1da6afa8.fd9b9856/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fstrawberrynet-beauty%2F248303%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  ['B07GXJ2G8C', 16, 'https://amzn.to/38fAXnh', 'https://hb.afl.rakuten.co.jp/ichiba/1da50f72.2d4a9533.1da50f73.1a5769a9/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fblanc-lapin%2Fysllc0000027%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  ['B07TWT6FGZ', 17, 'https://amzn.to/3p5KP99', 'https://hb.afl.rakuten.co.jp/ichiba/1da6b0c1.47e65956.1da6b0c2.c31ca1e9/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsara-style%2Fc-hd-001%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  ['B081CK1JW8', 18, 'https://amzn.to/3k4rWjt', nil],
  ['B07L5QX178', 19, 'https://amzn.to/32jqMup', 'https://hb.afl.rakuten.co.jp/ichiba/1da50f72.2d4a9533.1da50f73.1a5769a9/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fblanc-lapin%2Ftomjs0100014%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9']
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
    if item.listings.present?
      item.listings.each do |listing|
        price = listing.price["Amount"] #価格
      end
    else
      price = nil
    end

    Item.create!(
      name: name,
      image: open("#{Rails.root}/db/images/item_image/#{id[1]}.png"),
      price: price,
      amazon_url: id[2],
      rakuten_url: id[3],
      asin: id[0]
    ) if Item.find_by(asin: id[0]).blank?
  end

end