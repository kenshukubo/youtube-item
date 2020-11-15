ids = [
  # ['dralthea:10000013', 12, 'nil'],
  ['blanc-lapin:10163085', 13, 'https://amzn.to/36cJq83'],
  ['cinderellabeaute:10011113', 14, 'https://amzn.to/2I0YIFb'],
  ['blanc-lapin:10107138', 15, 'https://amzn.to/32jklYh'],
  ['cosmeland:10133989', 16, 'https://amzn.to/365ujgO'],
  ['strawberrynet-beauty:10044731', 17, 'https://amzn.to/32jknPT'],
  ['blanc-lapin:10150331', 18, 'https://amzn.to/38fAXnh'],
  ['sara-style:10004133', 19, 'https://amzn.to/3p5KP99'],
  ['thebeautyclub:10240658', 20, 'nil'],
  ['blanc-lapin:10155110', 21, 'https://amzn.to/32jqMup']
]
ids.each do |id|
  items = RakutenWebService::Ichiba::Item.search(itemCode: id[0])
  items.each do |item|
    name = item.name
    price = item.price
    rakuten_url = item.affiliate_url
    url = item["mediumImageUrls"][0]

    file = "#{Rails.root}/db/images/item_image/#{id[1]}.png"
    open(file, 'wb') do |pass|
      open(url) do |recieve|
        pass.write(recieve.read)
      end
    end

    Item.create!(
      name: name,
      image: open("#{Rails.root}/db/images/item_image/#{id[1]}.png"),
      price: price,
      amazon_url: id[2],
      rakuten_url: rakuten_url,
      url: id[0]
    ) if Item.find_by(id: id[1]).blank?
  end
end