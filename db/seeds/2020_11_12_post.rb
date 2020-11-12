require 'google/apis/youtube_v3' #YoutubeV3を使用するために、呼び出す
require 'open-uri'

youtube = Google::Apis::YoutubeV3::YouTubeService.new
youtube.key = ENV["YOUTUBE_APIKEY"]

ids = [
  ['UeBXdnHjhXE', 1, 1, 'morning_routin'],
  ['47YnnAAh3o0', 2, 1, nil],
  ['uLSE9dJcBVI', 3, 1, nil],
  ['vTeUxlZapeM', 4, 2, 'home_time'],
  ['4EAt82vGlFA', 5, 2, nil],
  ['YoI23FPPYvU', 6, 3, 'daily_make'],
  ['BVEccxsvOTI', 7, 3, nil],
  ['JvbP1b8vfcI', 8, 3, nil],
  ['wke8qemihbM', 9, 3, 'home_time'],
  ['wSilxSxRLds', 10, 3, nil],
  ['7Gxi4CVUd2k', 11, 3, 'your_pouch'],
  ['ZC9PxFbX9aM', 12, 3, nil],
  ['u2LEPiA0Lw8', 13, 3, nil],
  ['-mcjjv5RRB8', 14, 4, nil],
  ['ol5au-Jcsjg', 15, 5, 'daily_make'],
  ['JKNojeLXlUE', 16, 6, nil],
  ['IkdjqnJWhVg', 17, 6, nil],
  ['M6gPEipd9CM', 18, 6, nil],
  ['3O78vBiCvAw', 19, 6, nil],
  ['d88qODe8sqk', 20, 6, 'your_pouch'],
  ['iR0_8rQtahE', 21, 6, nil],
  ['oND8uQ8ZC_g', 22, 6, nil],
  ['f6e5ig7QhMI', 23, 6, nil],
  ['D4AvdxUK7Rw', 24, 6, nil],
  ['Nyryjtjs2oY', 25, 6, nil],
  ['uZNrQX69AYQ', 26, 6, nil],
  ['Hwa_QZSwGDQ', 27, 6, nil],
  ['2pKFBCwmhLI', 28, 6, nil],
  ['3J6atLfe6jk', 29, 6, nil],
  ['qDNV3k6Y1kw', 30, 6, nil],
  ['VTT6THDf6Oo', 31, 6, nil],
  ['3w7w7PuWWos', 32, 6, nil],
  ['3RqfYQ6ZmKs', 33, 6, nil],
  ['WVh6grDbObM', 34, 6, nil],
  ['Rim1jL7koxo', 35, 6, nil],
  ['p9jewXm6t4o', 36, 6, nil],
  ['qqemCIPRypU', 37, 6, nil],
  ['82XSamzH-lU', 38, 6, nil],
  ['TDugKQOBf24', 39, 6, nil],
  ['Czy9AxKBUL8', 40, 6, nil],
  ['Sr6MUEbOzlI', 41, 6, nil],
  ['U0YjhTa7EkU', 42, 6, nil],
  ['LbJXrPp6jSw', 43, 6, nil],
  ['HdL-uVPxB7Y', 44, 6, nil],
  ['f5ybLfshhEI', 45, 6, nil],
  ['HgaCP7aEtzc', 46, 6, nil],
  ['gm6khBUY8FU', 47, 6, nil],
  ['Y6mgjunXBQk', 48, 6, nil],
  ['O1yWVCsSeDQ', 49, 6, 'daily_make'],
  ['edrlmswit7I', 50, 6, nil],
  ['hViDh_7dWAI', 51, 7, 'daily_make'],
  ['vBpW7HZ1oHk', 52, 8, nil],
  ['RtqG7R2U3EI', 53, 9, nil],
  ['Pjoh-ra-k7c', 54, 13, 'morning_routin'],
  ['lXHOoLDCf2U', 55, 13, nil],
  ['m69scjIWKbE', 56, 13, nil],
  ['QfLqo3zRuPg', 57, 13, nil],
  ['SexBlIXkWCQ', 58, 13, nil],
  ['uRVxF5dQPIQ', 59, 13, nil],
  ['Dxv8S1e_oA8', 60, 13, 'daily_make'],
  ['a5Pm2wlbpMc', 61, 13, nil],
  ['WJXrYKm7yYA', 62, 13, nil],
  ['pfl7DbC84U4', 63, 13, nil],
  ['0Aq6NPPQpj0', 64, 13, 'night_routin'],
  ['P3pgopRGoDQ', 65, 13, nil],
  ['Zr00hYpWPE4', 66, 13, nil],
  ['YuPfQh5YXTo', 67, 13, nil],
  ['jYNpKWb1MFM', 68, 14, nil],
  ['R0HBMJGtjsg', 69, 14, 'morning_routin'],
  ['fdUG2fw3HqU', 70, 14, nil],
  ['WpcNGUk7hwc', 71, 14, nil],
  ['JiUNN2AsigM', 72, 14, nil],
  ['IP7HeEatZQI', 73, 14, nil],
  ['1BBBa5MVEoQ', 74, 14, nil],
  ['pJPtYiLvM5E', 75, 15, 'night_routin'],
  ['Bi8oh69b-IA', 76, 15, nil],
  ['MOFtqS8Mhks', 77, 15, nil],
  ['UGKJtySS3oU', 78, 15, 'morning_routin'],
  ['SmFumpYsRD8', 79, 15, nil],
  ['GYV74j1Awt4', 80, 16, nil],
  ['TBXqGfvkn9I', 81, 16, nil],
  ['d2lQ_vi1MGk', 82, 16, nil],
  ['vdA-QTt3J7k', 83, 16, nil],
  ['GvqI_1_HDdw', 84, 16, nil],
  ['i6MmHtDkgsI', 85, 18, 'daily_make'],
  ['Rq3CmwL8wO0', 86, 18, nil],
  ['WMxRm5xJJlE', 87, 18, 'home_time'],
  ['gXRELoIeVIQ', 88, 18, nil],
  ['gXRELoIeVIQ', 89, 18, nil],
  ['i1VKYZiXfEs', 90, 18, 'daily_make'],
  ['mPVRj7u4eM0', 91, 18, nil],
  ['FT8xYdI4308', 92, 18, nil],
  ['jiyZVyJ1vIo', 93, 18, nil],
  ['v-hzeift2Fo', 94, 18, nil],
  ['iz0w0_3qY8c', 95, 18, nil],
  ['rLqFNuiFU-A', 96, 18, nil],
  ['yq5Kln145N8', 97, 18, nil],
  ['xIa_CxT11XA', 98, 18, nil],
  ['hKQlktqAf34', 99, 18, 'daily_make'],
  ['JHUtsIugvWE', 100, 17, nil],
  ['JWez7pyyZG4', 101, 17, nil],
  ['MY7T3Ankfdw', 102, 17, nil],
  ['4JBrR4TCtXs', 103, 17, nil]
]

ids.each do |id|
  options = {
    :id => id[0] #YouTubeチャンネルのIDを指定
  }

  response = youtube.list_videos("snippet", options)

  title = response.items[0].snippet.title

  # url = response.items[0].snippet.thumbnails.high.url
  # file = "#{Rails.root}/db/images/video_image/#{id[1]}.png"
  # open(file, 'wb') do |pass|
  #   open(url) do |recieve|
  #     pass.write(recieve.read)
  #   end
  # end

  date = 20201112

  Post.create!(
    title: title, 
    thumbnail: open("#{Rails.root}/db/#{date}/#{id[1]}.png"),
    video_id: "#{id[0]}",
    youtuber_id: id[2],
    category: id[3]
  ) if Post.find_by(video_id: id[0]).blank?
end