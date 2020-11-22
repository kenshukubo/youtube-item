#[rakutenid, item_number, name, price, amazon_url, asin]
ids = [
  ['partytime-tokyo:10018430', 50, 'TOM FORD(トムフォード) TOM FORD BEAUTY アイ カラー クォード (3A ヌード ディップ)', nil, 'https://amzn.to/2IXreaS', 'B07339TRDP'],
  ['thebeautyclub:10216848', 51, 'ザ プレシジョン リキッド ライナー - # Basic Black', nil, 'https://amzn.to/3faIYeW', 'B008FC6OLY'],
  ['at-beaute:10007570', 52, 'キャンメイク ニュアンスライナー ブラック', nil, nil, nil],
  ['k-akakabe:10000476', 53, 'KATE(ケイト) ケイト アイブロウ デザイニングアイブロウ3D ライトブラウン', nil, 'https://amzn.to/32NrHDx', 'B06ZZWYPXP'],
  ['rakuten24:10616488', 54, 'マジョリカ マジョルカ ラッシュエキスパンダー ロングロングロング BK999', nil, 'https://amzn.to/3nxQEKW', 'B01N94SBHN'],
  ['cosmediva:10005041', 55, 'デジャヴュ ファイバーウィッグウルトラロングE1 ブラック', nil, 'https://amzn.to/2H9QGJF', 'B07YL9Z3RN'],
  ['etvos:10000818', 56, 'ETVOS ミネラルインナートリートメントベース 25ml SPF31 PA+++', nil, 'https://amzn.to/2UApMxK', 'B08HCRFK1R'],
  ['cosmecomonline:10106276', 57, 'セザンヌ ラスティングカバーファンデーション 10 明るいオークル系', nil, 'https://amzn.to/38RLqpo', 'B08FHP8KQD'],
  ['rakuten24:11002461', 58, 'excel(エクセル) アイプランナー S02 アイシャドウ フルムーン', nil, 'https://amzn.to/3fj4Tkd', 'B08JH3D2PF'],
  ['rakuten24:11002453', 59, 'excel(エクセル) アイプランナー D04 アイシャドウ ダンスホール', nil, 'https://amzn.to/38Ppc7n', 'B08JGYVJ81'],
  ['rakuten24:11002458', 60, 'excel(エクセル) アイプランナー アイシャドウ R05 シナモンフィグ', nil, 'https://amzn.to/32TEWm1', 'B08JGX3GVP'],
  ['cosmecomonline:10103270', 61, 'キャンメイク ステイオンバームルージュ 18 ブラウニッシュマンダリン', nil, 'https://amzn.to/3faJgm2', 'B08BGJYPTG'],
  ['foremost:10156750', 62, 'キャンメイク パーフェクトスタイリストアイズ v23 アイシャドウ 23 アーモンドカヌレ', nil, 'https://amzn.to/3lFTtcz', 'B08HKZLYY6'],
  ['cosmecomonline:10109593', 63, 'キャンメイク ハイライターH L01', nil, 'https://amzn.to/3pzeCaB', 'B08HL12QNS'],
  ['dap-shop:10000266', 64, 'MAMA BUTTER(ママバター) カラーリップスティック アプリコットオレンジ 口紅 ラベンダー&ゼラニウムの香り', nil, 'https://amzn.to/2IHsE9k', 'B08HLWQ67Y'],
  ['cosmecomonline:10107556', 65, 'kiss(キス) シマリングクリームアイズ02 アイシャドウ 02 サンセットラブ', nil, 'https://amzn.to/35Ajpk5', 'B08F4S5CHT'],
  ['matsukiyo:10507227', 67, 'CEZANNE セザンヌ ラスティングリップカラーN 505', nil, 'https://amzn.to/3kDiFPz', 'B08KH7RY99'],
  ['ehac:10179958', 68, 'セザンヌ トーンアップアイシャドウ 08 ハニーブラウン', nil, 'https://amzn.to/38PUye1', 'B08CVRK6R7'],
  ['foremost:10156256', 69, 'CEZANNE セザンヌ ニュアンスオンアイシャドウ01（ウォームコーラル）', nil, 'https://amzn.to/2IKviez', 'B08HHFPDZS'],
  ['0101marui:11609058', 70, 'セザンヌ ジェルアイライナー 60 オレンジブラウン', nil, 'https://amzn.to/3kEumFN', 'B08CVQWCWD'],
  ['rakuten24:10994128', 71, 'INTEGRATE(インテグレート) トリプルレシピアイズ アイシャドウ OR707', nil, 'https://amzn.to/36DvB2U', 'B08DYL8G9L'],
  ['stylestyle:10071635', 72, 'ORBIS(オルビス) ライトブラッシュ シナモン', nil, 'https://amzn.to/35Dmccp', 'B08GCRSZKF']
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