#[rakutenid, item_number, name, price, amazon_url, asin]
ids = [
  ['axas-co:10083102', 37, 'WHOMEE(フーミー) ウインクファイブアイシャドウ venus ヴィーナス ボルドー ', 2078, 'https://amzn.to/32RYg3a', 'B081Y5XNWD'],
  ['suiping:10000159', 38, nil, nil, nil, nil],
  ['plazastyle:10016482', 39, '&be(アンドビー) クリアクレンズウォーター 160mL ', 1850, 'https://amzn.to/2IEovmp', 'B087M1RDLD'],
  ['cosmeparfaite:10008565', 40, 'シャネル レ ベージュ ボーム ア レーヴル アンタンス リップクリーム -CHANEL- ', 5480, 'https://amzn.to/36GHMMp', 'B07S88X65Y'],
  ['blanc-lapin:10146207', 41, 'クラッシュド リップ カラー #01 ベイブ 3.4g 【ボビイ ブラウン】 [並行輸入品] ', 2570, 'https://amzn.to/36GHNzX', 'B07CJY2D5W'],
  ['pureco:10061490', 43, 'フェンティ ビューティー スナップ パレット アイシャドウ ミックス & マッチ 1g×6#1 TRUE NEUTRALS [並行輸入品] ', nil, 'https://amzn.to/35zO4hw', 'B0895DPB6C'],
  ['fandora:10011146', 44, '資生堂 クレ・ド・ポー ボーテ ル・フォンドゥタン ベージュオークル20 ', 28500, 'https://amzn.to/2UC8Vul', 'B075CLG59D'],
  ['e-newlife:10004401', 45, 'スック グロウ タッチ アイズ 05 曙染 -AKEBONOZOME -SUQQU- ', 4510, 'https://amzn.to/36JRSMl', 'B07FNC6QBP'],
  ['e-newlife:10005456', 46, nil, nil, nil, nil],
  ['qeen:10621135', 47, 'ベアミネラル ジェン ヌード アイシャドウ パレット ローズ (6.6g) ', 11660, 'https://amzn.to/3pDnoo8', 'B07NP14QYD'],
  ['blanc-lapin:10159628', 48, 'THREE(スリー) クリスタルビジョンインテンシブアイライナー #01 DARK VISION[ アイライナー ] [並行輸入品] ', nil, 'https://amzn.to/3lEQH7m', 'B07XNTM38F'],
  ['maccosmetics:10000291', 49, 'MAC エクストラ ディメンション ブラッシュ #Sweets for my s Extra Dimension Blush #Sweets for my s ', nil, 'https://amzn.to/2IzToc9', 'B072KGF33H']
]

ids.each do |id|
  items = RakutenWebService::Ichiba::Item.search(itemCode: id[0])
  items.each do |item|
    name = item.name
    price = item.price
    rakuten_url = item.affiliate_url
    url = item["mediumImageUrls"][0]

    # file = "#{Rails.root}/db/images/rakuten_api_item/#{id[1]}.png"
    # open(file, 'wb') do |pass|
    #   open(url) do |recieve|
    #     pass.write(recieve.read)
    #   end
    # end

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