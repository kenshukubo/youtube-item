require 'google/apis/youtube_v3' #YoutubeV3を使用するために、呼び出す
require 'open-uri'

youtube = Google::Apis::YoutubeV3::YouTubeService.new
youtube.key = ENV["YOUTUBE_APIKEY"]

ids = [
"_A_0SRqJtc0",
"0n6ZDh-h-fY",
"1gaVT82NYt0",
"2JwX7th0qZM",
"2obGHGmwpFw",
"5KpAMW-cfQ0",
"60zMJ-cIV8I",
"61PfDt4uqwo",
"7NTFNc2ju4U",
"84S5tlg4KKE",
"8G6YwVwQMNo",
"947DKmnxP5o",
"9DQB_Tkzzno",
"9gBDsYoQboE",
"9h7wNFpS5c8",
"9K25phjjjHs",
"9NmsYeQNRhA",
"9SGu6dV0Dw4",
"b-cImPykvDM",
"Bbj_cMHC_Jg",
"BGkRyeB_XVY",
"BKD60ksY-9E",
"ccEZ6Ilaq1c",
"cCIwM6NWAlo",
"CfbbEJQpar8",
"CqiUN5XNrGs",
"Cr1w_jbUmT0",
"CxImfTSUmXs",
"D3NvESdYkuM",
"DBFuQD730LM",
"dRDFGiMNzXw",
"dS_6LOOJf7o",
"FdYPz29Uo9g",
"fvUxqcPw9Ko",
"G-C2krPjhq8",
"gZS4effQJD0",
"h5enexa5Lr0",
"HhIybDqSQxU",
"ho3FLG-85mY",
"HVX5xBwrGGo",
"j_FmKTNWTN0",
"j3_AYaUPZuk",
"jg66Ju98L80",
"JJBmQ9pb-mk",
"jvQl8KwYF34",
"kIYCbxcyyHI",
"KSSemSOlZ6k",
"KVdIHwfUVps",
"L_LGmwWp_NM",
"lBN1wRUj_wM",
"LF-B7etOr2k",
"lQmGcGMWNi4",
"Q12X69e1B_w",
"qKVigYCJfNw",
"QSm08U_KcP4",
"qSq4YJCOkBg",
"Rb-1742_v-A",
"ryFDdq04UAY",
"rYJFETMPviU",
"s1m2QP6JqWs",
"SbK_2Gy37sE",
"sD0ryN6bw6I",
"SIl58gAz9ME",
"SMd-EUrani8",
"TCXTQDXOrLM",
"tmYv48WBCHQ",
"UHQL1UvZ78w",
"uJ4qCsv7akU",
"uQeidWBtjic",
"utBpTxwDhbI",
"vfFPv33bPyo",
"VOoSlKrzCIU",
"vtYDJ6gfbaw",
"VVqKJ0m3xtM",
"w_eRAdteuJQ",
"WLoX7l0F7tY",
"WnlgDAAufd8",
"Xd7Y6ZNOKiw",
"XqzN2eE1TmY",
"Y91TEdWa8ds",
"YirqYAGV0nQ",
"Zd0QK9AZOeo"
]

number = 1 #番号定義
ids.each do |id|
  options = {
    :id => id #YouTubeチャンネルのIDを指定
  }

  response = youtube.list_videos("snippet", options)

  #title = response.items[0].snippet.title

  url = response.items[0].snippet.thumbnails.high.url
  file = "#{Rails.root}/db/images/skincare_post_image/#{number}.png"
  open(file, 'wb') do |pass|
    open(url) do |recieve|
      pass.write(recieve.read)
    end
  end

  number += 1

  # Post.create!(
  #   title: title, 
  #   thumbnail: open("#{Rails.root}/db/2020post/#{id[1]}.png"),
  #   video_id: "#{id[0]}",
  #   youtuber_id: id[2]
  # ) if Post.find_by(video_id: id[0]).blank?
end