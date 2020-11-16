ids = [
  ['B06X9ZNFCW', 20, 'https://amzn.to/38LVj7X', nil, "クラランス ポアパーフェクティングマティファイングキットウィズブロッティングペーパーズ", 5220],
  ['B07BL1K1QT', 21, 'https://amzn.to/3pv3iMG', 'https://hb.afl.rakuten.co.jp/ichiba/1dab93b3.956230df.1dab93b4.01b80ab6/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fbeautyeru%2Flancome_browpodery%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9', "ランコム スーシシェイピングクレヨン # 03 Light Brown", 3846],
  ['B01MR6E3XU', 22, 'https://amzn.to/32QS5fF', nil, "Kylie Cosmetics（カイリーコスメティック）The Burgundy Palette KYSHADOW", 7459],
  ['B07517KSSL', 23, 'https://amzn.to/3lAvT0B', 'https://hb.afl.rakuten.co.jp/ichiba/1dab9491.f4913432.1dab9492.45ae1233/_RTLink13434?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fg-plus%2Fgcha001000%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9', "シャネル レ ベージュ プードゥル ベル ミン アンソレイエ (ミディアム ライト)", 6970]
]

ids.each do |id|
  Item.create!(
    name: id[4],
    image: open("#{Rails.root}/db/2020amazon_item/#{id[1]}.png"),
    price: id[5],
    amazon_url: id[2],
    rakuten_url: id[3],
    asin: id[0]
  ) if Item.find_by(asin: id[0]).blank?
end