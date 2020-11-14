require 'google/apis/youtube_v3' #YoutubeV3を使用するために、呼び出す
require 'open-uri'

youtube = Google::Apis::YoutubeV3::YouTubeService.new
youtube.key = ENV["YOUTUBE_APIKEY"]

ids = [
  ['UeBXdnHjhXE', 1, 1],
  ['47YnnAAh3o0', 2, 1],
  ['uLSE9dJcBVI', 3, 1],
  ['vTeUxlZapeM', 4, 2],
  ['4EAt82vGlFA', 5, 2],
  ['YoI23FPPYvU', 6, 3],
  ['BVEccxsvOTI', 7, 3],
  ['JvbP1b8vfcI', 8, 3],
  ['wke8qemihbM', 9, 3],
  ['wSilxSxRLds', 10, 3],
  ['7Gxi4CVUd2k', 11, 3],
  ['ZC9PxFbX9aM', 12, 3],
  ['u2LEPiA0Lw8', 13, 3],
  ['-mcjjv5RRB8', 14, 4],
  ['ol5au-Jcsjg', 15, 5],
  ['JKNojeLXlUE', 16, 6],
  ['IkdjqnJWhVg', 17, 6],
  ['M6gPEipd9CM', 18, 6],
  ['3O78vBiCvAw', 19, 6],
  ['d88qODe8sqk', 20, 6],
  ['iR0_8rQtahE', 21, 6],
  ['oND8uQ8ZC_g', 22, 6],
  ['f6e5ig7QhMI', 23, 6],
  ['D4AvdxUK7Rw', 24, 6],
  ['Nyryjtjs2oY', 25, 6],
  ['uZNrQX69AYQ', 26, 6],
  ['Hwa_QZSwGDQ', 27, 6],
  ['2pKFBCwmhLI', 28, 6],
  ['3J6atLfe6jk', 29, 6],
  ['qDNV3k6Y1kw', 30, 6],
  ['VTT6THDf6Oo', 31, 6],
  ['3w7w7PuWWos', 32, 6],
  ['3RqfYQ6ZmKs', 33, 6],
  ['WVh6grDbObM', 34, 6],
  ['Rim1jL7koxo', 35, 6],
  ['p9jewXm6t4o', 36, 6],
  ['qqemCIPRypU', 37, 6],
  ['82XSamzH-lU', 38, 6],
  ['TDugKQOBf24', 39, 6],
  ['Czy9AxKBUL8', 40, 6],
  ['Sr6MUEbOzlI', 41, 6],
  ['U0YjhTa7EkU', 42, 6],
  ['LbJXrPp6jSw', 43, 6],
  ['HdL-uVPxB7Y', 44, 6],
  ['f5ybLfshhEI', 45, 6],
  ['HgaCP7aEtzc', 46, 6],
  ['gm6khBUY8FU', 47, 6],
  ['Y6mgjunXBQk', 48, 6],
  ['O1yWVCsSeDQ', 49, 6],
  ['edrlmswit7I', 50, 6],
  ['hViDh_7dWAI', 51, 7],
  ['vBpW7HZ1oHk', 52, 8],
  ['RtqG7R2U3EI', 53, 9],
  ['Pjoh-ra-k7c', 54, 13],
  ['lXHOoLDCf2U', 55, 13],
  ['m69scjIWKbE', 56, 13],
  ['QfLqo3zRuPg', 57, 13],
  ['SexBlIXkWCQ', 58, 13],
  ['uRVxF5dQPIQ', 59, 13],
  ['Dxv8S1e_oA8', 60, 13],
  ['a5Pm2wlbpMc', 61, 13],
  ['WJXrYKm7yYA', 62, 13],
  ['pfl7DbC84U4', 63, 13],
  ['0Aq6NPPQpj0', 64, 13],
  ['P3pgopRGoDQ', 65, 13],
  ['Zr00hYpWPE4', 66, 13],
  ['YuPfQh5YXTo', 67, 13],
  ['jYNpKWb1MFM', 68, 14],
  ['R0HBMJGtjsg', 69, 14],
  ['fdUG2fw3HqU', 70, 14],
  ['WpcNGUk7hwc', 71, 14],
  ['JiUNN2AsigM', 72, 14],
  ['IP7HeEatZQI', 73, 14],
  ['1BBBa5MVEoQ', 74, 14],
  ['pJPtYiLvM5E', 75, 15],
  ['Bi8oh69b-IA', 76, 15],
  ['MOFtqS8Mhks', 77, 15],
  ['UGKJtySS3oU', 78, 15],
  ['SmFumpYsRD8', 79, 15],
  ['GYV74j1Awt4', 80, 16],
  ['TBXqGfvkn9I', 81, 16],
  ['d2lQ_vi1MGk', 82, 16],
  ['vdA-QTt3J7k', 83, 16],
  ['GvqI_1_HDdw', 84, 16],
  ['i6MmHtDkgsI', 85, 18],
  ['Rq3CmwL8wO0', 86, 18],
  ['WMxRm5xJJlE', 87, 18],
  ['gXRELoIeVIQ', 88, 18],
  ['gXRELoIeVIQ', 89, 18],
  ['i1VKYZiXfEs', 90, 18],
  ['mPVRj7u4eM0', 91, 18],
  ['FT8xYdI4308', 92, 18],
  ['jiyZVyJ1vIo', 93, 18],
  ['v-hzeift2Fo', 94, 18],
  ['iz0w0_3qY8c', 95, 18],
  ['rLqFNuiFU-A', 96, 18],
  ['yq5Kln145N8', 97, 18],
  ['xIa_CxT11XA', 98, 18],
  ['hKQlktqAf34', 99, 18],
  ['JHUtsIugvWE', 100, 17],
  ['JWez7pyyZG4', 101, 17],
  ['MY7T3Ankfdw', 102, 17],
  ['4JBrR4TCtXs', 103, 17]
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
    youtuber_id: id[2]
  ) if Post.find_by(video_id: id[0]).blank?
end