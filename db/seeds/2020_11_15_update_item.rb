ids = [
  ['cosmelink:10044082', 10, 'https://amzn.to/2IbD3tJ', 'B019MARIVM'],
  ['cosmeland:10143611', 11, 'https://amzn.to/38hogZh', 'B078YK68R1'],
  ['blanc-lapin:10163085', 12, 'https://amzn.to/36cJq83', 'B07WD99GQ6'],
  ['cinderellabeaute:10011113', 13, 'https://amzn.to/2I0YIFb', 'B01G6IEF50'],
  ['blanc-lapin:10107138', 14, 'https://amzn.to/32jklYh', 'B0758DFCW8'],
  ['cosmeland:10133989', 15, 'https://amzn.to/365ujgO', 'B01JR1PWA0'],
  ['strawberrynet-beauty:10044731', 16, 'https://amzn.to/32jknPT', 'B07GQ9NH3B'],
  ['blanc-lapin:10150331', 17, 'https://amzn.to/38fAXnh', 'B07GXJ2G8C']
]

ids.each do |id|
  items = RakutenWebService::Ichiba::Item.search(itemCode: id[0])
  items.each do |item|
    name = item.name
    price = item.price
    rakuten_url = item.affiliate_url

    date = 20201115

    Item.update!(
      name: name,
      image: open("#{Rails.root}/db/#{date}/#{id[1]}.png"),
      price: price,
      amazon_url: id[2],
      rakuten_url: rakuten_url,
      url: id[0],
      asin: id[3]
    )
  end
end