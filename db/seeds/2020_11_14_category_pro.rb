date=20201114

category = Category.create(name: '動画ネタ')
category.children.create!(name: 'モーニングルーティン', image: open("#{Rails.root}/db/#{date}/sun.png"))
category.children.create!(name: 'ナイトルーティン', image: open("#{Rails.root}/db/#{date}/moon.png"))
category.children.create!(name: 'バッグの中身', image: open("#{Rails.root}/db/#{date}/bag.png"))
category.children.create!(name: 'ポーチの中身', image: open("#{Rails.root}/db/#{date}/pouch.png"))
category.children.create!(name: 'おうち時間', image: open("#{Rails.root}/db/#{date}/house.png"))
category.children.create!(name: '毎日メイク', image: open("#{Rails.root}/db/#{date}/cosme.png"))