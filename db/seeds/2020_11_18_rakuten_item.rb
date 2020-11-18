#[rakutenid, item_number, name, price, amazon_url, asin]
ids = [
  ['dralthea:10000013', 8, nil, nil, nil, nil],
  ['thebeautyclub:10240658', 19, nil, nil, nil, nil],
  ['bioderma:10000057', 22, 'ビオデルマ フォトデルム ＵＶ センシティブベース ＡＲ ５０＋ ３０ｇ [並行輸入品] ', 2428, 'https://amzn.to/36BStQl', 'B00ST2FMWC'],
  ['laurette:10001109', 23, nil, nil, nil, nil],
  ['kkcosme:10004843', 28, nil, nil, nil, nil],
  ['laurette:10001937', 29, 'Stila HUGE™ Extreme Lash Mascara - Black (Huge) 0.44oz ', 6400, 'https://amzn.to/2ILnwAL', 'B011J6HJKM'],
  ['maccosmetics:10000624', 30, 'M・A・C ブロウセット #クリア 8g [408801] [並行輸入品] ', 2900, 'https://amzn.to/38OIrOC', 'B01778RZE6'],
  ['cosmecomonline:10094971', 32, 'オンリーミネラル(ONLY MINERALS) 【N by ONLY MINERALS】 ミネラルピグメント 01 イエス！ アイシャドウ イエス! 0.7g ', '2500', 'https://amzn.to/3ntxMNo', 'B082VK6FRP'],
  ['qeen:10625480', 33, nil, nil, nil, nil],
  ['strawberrynet-beauty:10006218', 36, 'ジョルジオアルマーニ リップマエストロ リップグロス- # 500 (Blush) 6.5ml/0.22oz並行輸入品 ', 2000, 'https://amzn.to/35DbT88', 'B01640K2OI']
]

ids.each do |id|
  items = RakutenWebService::Ichiba::Item.search(itemCode: id[0])
  items.each do |item|
    name = item.name
    price = item.price
    rakuten_url = item.affiliate_url
    url = item["mediumImageUrls"][0]

    file = "#{Rails.root}/db/2020amazon_item/#{id[1]}.png"
    open(file, 'wb') do |pass|
      open(url) do |recieve|
        pass.write(recieve.read)
      end
    end

    if id[2].present?
      name = id[2]
    end

    if id[3].present?
      price = id[3]
    end

    if id[5].present?
      asin = id[5]
    else
      asin = nil
    end

    Item.create!(
      name: name,
      item_number: id[1],
      image: open("#{Rails.root}/db/2020amazon_item/#{id[1]}.png"),
      price: price,
      amazon_url: id[4],
      asin: asin,
      rakuten_url: rakuten_url,
      url: id[0]
    ) if Item.find_by(item_number: id[1]).blank?
  end
end