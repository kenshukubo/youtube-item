require 'paapi'
require 'open-uri'
@client = Paapi::Client.new(
  access_key: ENV["AMAZON_APIKEY"],
  secret_key: ENV["AMAZON_SECRETKEY"],
  market: :jp,
  partner_tag: ENV["AMAZON_ASSOCIATE_TAG"]
)

ids = [
  ['B07WR6GXN9', 1, 'https://amzn.to/2TimJcE', 'https://hb.afl.rakuten.co.jp/ichiba/1da00a71.9904ee95.1da00a72.6d61c111/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fstembeaute%2Fstembeaute180-1%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  ['B00L87WZCU', 2, 'https://amzn.to/2HfBvib', 'https://hb.afl.rakuten.co.jp/ichiba/1da503ea.870c1ebc.1da503eb.7c93da96/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fgreenbasket%2F856556004111%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  ['B01J1ZBJSG', 3, 'https://amzn.to/35riD7A', 'https://hb.afl.rakuten.co.jp/ichiba/1da5048c.237701a1.1da5048d.06f6ee0a/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Famericana%2Fdrunk004%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  ['B01GPFDCF8', 4, 'https://amzn.to/3dNHtT7', 'https://hb.afl.rakuten.co.jp/ichiba/1da504bd.5ff405b6.1da504be.9793d49d/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fnet-pumpkin%2F3348900898844%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  ['B07VWPRBDH', 5, 'https://amzn.to/3kpq6dN', 'https://hb.afl.rakuten.co.jp/ichiba/1da5061e.5f40593b.1da5061f.02ef8b20/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fkkcosme%2F623784800-1-hnd%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  ['B078YK68R1', 6, 'https://amzn.to/38hogZh', 'https://hb.afl.rakuten.co.jp/ichiba/1da6af30.08c60a3f.1da6af31.d0eb274f/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fcosmeland%2F285146%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  ['B07WD99GQ6', 7, 'https://amzn.to/36cJq83', 'https://hb.afl.rakuten.co.jp/ichiba/1da50f72.2d4a9533.1da50f73.1a5769a9/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fblanc-lapin%2Fyslip0000019%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  ['B0758DFCW8', 8, 'https://amzn.to/32jklYh', 'https://hb.afl.rakuten.co.jp/ichiba/1da6af7e.4485bd9f.1da6af7f.80d5da6d/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fswishpop%2Fi0085160%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9'],
  ['B01JR1PWA0', 9, 'https://amzn.to/365ujgO', 'https://hb.afl.rakuten.co.jp/ichiba/1da6af30.08c60a3f.1da6af31.d0eb274f/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fcosmeland%2F270672%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9']
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