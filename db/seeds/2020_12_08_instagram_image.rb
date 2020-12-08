# date = 20201208

# InstagramImage.create!(post: Post.find_by(video_id: "YoI23FPPYvU"), image: open("#{Rails.root}/db/2020instagram/#{date}/1.jpg"))
# InstagramImage.create!(post: Post.find_by(video_id: "YoI23FPPYvU"), image: open("#{Rails.root}/db/2020instagram/#{date}/2.jpg"))
# InstagramImage.create!(post: Post.find_by(video_id: "YoI23FPPYvU"), image: open("#{Rails.root}/db/2020instagram/#{date}/3.jpg"))
# InstagramImage.create!(post: Post.find_by(video_id: "YoI23FPPYvU"), image: open("#{Rails.root}/db/2020instagram/#{date}/4.jpg"))
# InstagramImage.create!(post: Post.find_by(video_id: "YoI23FPPYvU"), image: open("#{Rails.root}/db/2020instagram/#{date}/5.jpg"))
# InstagramImage.create!(post: Post.find_by(video_id: "YoI23FPPYvU"), image: open("#{Rails.root}/db/2020instagram/#{date}/6.jpg"))
# InstagramImage.create!(post: Post.find_by(video_id: "YoI23FPPYvU"), image: open("#{Rails.root}/db/2020instagram/#{date}/7.jpg"))
# InstagramImage.create!(post: Post.find_by(video_id: "YoI23FPPYvU"), image: open("#{Rails.root}/db/2020instagram/#{date}/8.jpg"))

item = 
Item.create!(
  name: "Ere Perez - Natural & Vegan Mango Lip Honey",
  item_number: 35,
  image: open("#{Rails.root}/db/2020amazon_item/35.png"), ##### 本番用 #####
  price: 2400,
  amazon_url: "https://www.amazon.com/Ere-Perez-Natural-Vegan-Beauty/dp/B07YSW4CWQ",
  asin: "B07YSW4CWQ",
  rakuten_url: nil
)

ItemPost.create!(item: item, post: Post.find_by(video_id: "YoI23FPPYvU"))
PostItemCategory.create!(item: item, category: Category.find(20))