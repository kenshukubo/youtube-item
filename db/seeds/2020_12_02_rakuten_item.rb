#[rakutenid, item_number, name, price, amazon_url, asin]
ids = [
  # ['rakuten24:10950216', 294, 'La Roche-Posay(ラロッシュポゼ) 【日やけ止め・化粧下地】UVイデア XL プロテクショントーンアップローズ ピンク', 3740, 'https://amzn.to/3q2dr3P', 'B0851ZPQQF'],
  # ['yellowshop:16166049', 295, 'WetBrush(ウェットブラシ) パドル ディタングラー', 1980, 'https://amzn.to/3q3F3Wl', 'B07Z65LF1X'],
  # ['partytime-tokyo:10014194', 296, 'クリスチャン ディオール(Christian Dior) ディオールスキン フォーエヴァー＆エヴァー ベース #001 SPF20-PA++', 6100, 'https://amzn.to/3o4oIi4', 'B077QLWMV4'],
  # ['blanc-lapin:10164431', 297, 'ジバンシイ GIVENCHY タン・クチュール・クッション #C110', nil, nil, nil],
  # ['everyshop:10000545', 299, 'ヒロインメイクSP スムースリキッドアイライナースーパーキープ01/漆黒ブラック', 1100, 'https://amzn.to/33rnFB8', 'B00RWME3MU'],
  # ['americana:10002011', 300, 'Anastasia Beverly Hills Brow Wiz - Medium Brown', nil, 'https://amzn.to/36eKoC1', 'B01M5CZAXM'],
  # ['tomods-ap:10023065', 302, 'アイプチ (R) ビューティ フィットカーラー ひとえ・奥ぶたえ用', 2578, 'https://amzn.to/3mlJnhq', 'B08HQPRDP1'],
  # ['k-akakabe:10000291', 303, 'ケイト ラッシュフォーマーWP(ロング) BK-1 マスカラ', 1540, 'https://amzn.to/3fKMhte', 'B07DRRXW3B'],
  # ['aquabouquet:10062214', 305, 'ディオール ルージュ ディオール ウルトラ リップ バーム バイオレット ( 989 VIOLET', nil, nil, nil],
  # ['summers:10042181', 306, 'Obagi(オバジ) オバジC セラムゲル オールインワン', nil, 'https://amzn.to/3o2pjkn', 'B083TX11N6'],
  # ['auc-tansera:10200764', 307, 'Obagi(オバジ) オバジC 酵素洗顔パウダー (ビタミンC 酵素2種類配合) 30個', 1980, 'https://amzn.to/3lfJOIL', 'B06XKN42S8'],
  # ['24hcosme:10000520', 308, '24 ミネラルモイストスティックファンデ (03ナチュラルベージュ)', 4930, 'https://amzn.to/2JpJ06z', 'B085ZXT3R7'],
  # ['24hcosme:10000521', 309, '24 ミネラルモイストパウダーファンデ リフィル (03ナチュラルベージュ)', 3850, 'https://amzn.to/3o0kojW', 'B08611CF2C'],
  # ['24hcosme:10000284', 310, '24h cosme 24 ミネラルスティックファンデ 02ライト SPF50+/PA＋＋＋＋', nil, 'https://amzn.to/2KQFxyZ', 'B079Q88RWX'],
  # ['24hcosme:10000284', 311, '24h cosme 24 ミネラルスティックファンデ 01ベリーライト SPF50+/PA＋＋＋＋', nil, 'https://amzn.to/2KQFCCN', 'B079DHWRKV'],
  # ['24hcosme:10000284', 312, '24h cosme 24 ミネラルスティックファンデ 03ナチュラル SPF50+/PA＋＋＋＋', nil, 'https://amzn.to/3q2dHjj', 'B079PQC7KD'],
  # ['24hcosme:10000520', 313, '24 ミネラルモイストスティックファンデ (01ライトベージュ)', 4890, 'https://amzn.to/2Vhx0Xr', 'B085ZKNWBP'],
  # ['24hcosme:10000520', 314, '24 ミネラルモイストスティックファンデ (02ピンクベージュ)', nil, nil, nil],
  # ['24hcosme:10000522', 316, '24 ミネラルモイストパウダーファンデ リフィル (01ライトベージュ)', 3790, 'https://amzn.to/3fGNX78', 'B085ZX7TLP'],
  # ['24hcosme:10000522', 317, '24 ミネラルモイストパウダーファンデ リフィル (02ピンクベージュ)', nil, nil, nil],
  # ['blanc-lapin:10157766', 318, 'ルネ フルトレール 5 センス シャンプー', 2500, 'https://amzn.to/33kl7Ve', 'B078GHZVLF'],
  # ['beautyeru:10035296', 319, 'ルネ フルトレール 5 センス コンディショナー', 2880, 'https://amzn.to/3mgGfTU', 'B078GH9XYT'],
  # ['tokimeki02:10211558', 320, 'クラランス CLARINS マイクラランス ハイドレイティング ビューティー ミスト', 1980, 'https://amzn.to/36ewTCx', 'B088T3THX6'],
  # ['fancl-shop:10009026', 321, 'ファンケル (FANCL) 洗顔パウダー 1本 50g (約30日分)', nil, 'https://amzn.to/3fIv8At', 'B01KTJXVI4'],
  # ['naturelab:10005374', 322, 'freioil(フレイオイル) ミルキー バスオイル 入浴剤 40ml×5包', 2750, 'https://amzn.to/3fGO02O', 'B000V3KJHA'],
  # ['cosmeland:10117489', 323, 'エスティローダー(ESTEE LAUDER) アドバンス ナイト リペア パワーフォイル マスク 4枚入り', nil, 'https://amzn.to/2Jl4phk', 'B0749JF2V7'],
  # ['bellcosme:10027574', 324, 'ランコム LANCOME ジェニフィック アドバンスト ハイドロジェル メルティングマスク 1枚', nil, 'https://amzn.to/3ljpaHw', 'B07NMKBPS9'],
  # ['e-squ:12745515', 325, 'ビューティーワールド BW 素肌タッチのふたえテープ ナチュラルアイテープ(バリューパック) 90回分', nil, 'https://amzn.to/36fNXIe', 'B076JBSB87'],
  # ['beautitopping:10001092', 326, 'FEMMUE(ファミュ) エバーグロウクッション SPF23 PA++[ナチュラルベージュ]', nil, 'https://amzn.to/36b0lJA', 'B07P7ND8BR'],
  # ['k-akakabe:10000291', 327, 'ケイト ラッシュフォーマー(ロング) BK-1 マスカラ', nil, 'https://amzn.to/2VcXV6M', 'B07DS3G2LF'],
  # ['nitori:10230735', 328, 'GUARDIO 薬用ホワイトローション400mL＜美白*化粧水＞（医薬部外品） ニトリ', nil, nil, nil],
  # ['nitori:10230734', 330, 'GUARDIO 薬用ホワイトローション130mL＜美白*化粧水＞（医薬部外品） ニトリ', nil, nil, nil],
  # ['nitori:10230737', 331, 'GUARDIO UVボディミルク 90g ニトリ', nil, nil, nil],
  # ['cosmelink:10068282', 332, 'イヴサンローラン トップシークレット モイスチャーエクラ 40mL', nil, 'https://amzn.to/2V98JTo', 'B07BQ12J6D'],
  # ['cosmediva:10004500', 333, 'ジバンシイ ランタンポレルブロッサムクリーム コンパクト', nil, 'https://amzn.to/3mej7VW', 'B07GX8TMZL'],
  # ['beautitopping:10000038', 334, 'CNP PROPOLIS AMPULE IN CUSHION プロＰ ＩＮクッション 15g+15g (#21 ライトベージュ)', nil, 'https://amzn.to/3fLQGfQ', 'B07WY4XS5P'],
  # ['innisfree-official:10000000', 335, 'イニスフリー ノーセバム ミネラルパウダー', nil, 'https://amzn.to/3lbdF53', 'B0794KZ63D'],
  # ['rakuten24:10634141', 336, 'セザンヌ ミックスカラーチーク 20', nil, 'https://amzn.to/3fKhIEf', 'B079TLMNT7'],
  # ['rakuten24:10755147', 337, 'ヴィセ リシェ カラーリング アイブロウマスカラ ピンクブラウン BR-4', nil, 'https://amzn.to/2VeAHgw', 'B01FQ9P9GE'],
  # ['freefeel:10035389', 338, '3CE ムードレシピ フェイス ブラッシュ (チーク) ／ Mood Recipe Face Blush (ローズベージュ(Rose Beige))', nil, 'https://amzn.to/37emciH', 'B0777H6BSW'],
  # ['zagzag:10081392', 340, 'キャンメイク クリーミータッチライナー04 ガーネットバーガンディ', nil, 'https://amzn.to/3fK48ke', 'B07Y2SBTKZ'],
  # ['everyshop:10000540', 341, 'ヒロインメイクSP ロング&カールマスカラ スーパーフィルム01/漆黒ブラック', nil, 'https://amzn.to/3fPcM0P', 'B00M1RGEE6'],
  # ['cosmecomonline:10090751', 342, 'BIDOL つやぷるリップ 06 きまぐれBROWN', nil, 'https://amzn.to/3mi1rsx', 'B07YMJ9ZCD'],
  # ['proteinusa:10001360', 343, 'WELEDA(ヴェレダ) 歯みがき カレンドラ 75ml 【ペパーミントフリー】', nil, 'https://amzn.to/2V7wjjE', 'B000FQVR2O'],
  # ['suplinx:10014162', 344, 'WELEDA(ヴェレダ) 歯みがき プラント', nil, 'https://amzn.to/2V8xNdd', 'B000FQVR24'],
  # ['cinderellabeaute:10000617', 345, 'セルヴォーク インフィニトリー カラー 01 ブロンズ', nil, nil, nil],
  # ['cosmecomonline:10095068', 347, 'オンリーミネラル(ONLY MINERALS) ミネラルブルーミングカラー 04 パウダーローズ ハイライト', nil, 'https://amzn.to/3mejobq', 'B0848KKB5X'],
  # ['cosmecomonline:10107153', 348, 'MiMC(エムアイエムシー) ミネラルスムースチーク 03 デザイアー', nil, 'https://amzn.to/2HKWolx', 'B0861XQZVK'],
  # ['cosme-garden:10020858', 349, 'MiMC(エムアイエムシー) ミネラルリキッドルージュ 口紅 02 ラビッシュローズ', nil, 'https://amzn.to/2HIVO7F', 'B07GZ3ZDGR'],
  # ['cosmecomonline:10095068', 350, '【AFC公式ショップ】ラ・ヴィ・プラセンタ 1ヶ月分 【ハードカプセル サプリ 60日】', nil, 'https://amzn.to/33kQC1h', 'B01EFGOHOY'],
  # ['cosmeland:10148059', 351, 'アクセーヌ スーパーサンシールド ブライトヴェール', nil, 'https://amzn.to/36eGVn5', 'B06ZYXRLQV'],
  # ['seido-zakka:10000587', 352, '【まとめ買い】コットンラボ ビタミンC誘導体 炭酸パックマスク', nil, 'https://amzn.to/3q8KqUc', 'B089Y9BXWM'],
  # ['syannsyann:10003350', 353, 'shiro 酒かす集中パック', nil, 'https://amzn.to/3nVp0rE', 'B0767GHCBM'],
  # ['juin06:10015129', 354, 'est(エスト) エスト スキンアライブマッサージ', nil, 'https://amzn.to/3lenj6M', 'B0776PN84J'],
  # ['emikuru:10000415', 355, 'CLAYGE(クレージュ) クレンジングバームモイスト', nil, 'https://amzn.to/2V8y3sH', 'B07XMG5WGH'],
  # ['sian:10006630', 356, 'カバーマーク(COVERMARK) カバーマーク モイスチュア コート ジェル＜専用パフ付＞', nil, 'https://amzn.to/2JgMkRN', 'B07YYN7Q6V'],
  # ['cosmelink:10065179', 357, 'GIVENCHY(ジバンシイ) ランタンポレル ブロッサム クリーム ミスト50mL', nil, 'https://amzn.to/3lcoLGN', 'B07QTKTDVC'],
  # ['ayura:10000549', 358, 'アユーラ (AYURA) オイルシャットデイセラム ＜ 朝用練り美容液 ＞', nil, 'https://amzn.to/3fKicu3', 'B07CG7QTBB'],
  # ['matsumoto-cosmetic:10012662', 359, 'アクセーヌ スーパーサンシールド ブライトヴェール', nil, 'https://amzn.to/36gCoRg', 'B075JBFQF8'],
  # ['goodcosme2012:10018351', 360, 'NARS アクアティックグロー クッションコンパクト レフィル SPF23', nil, 'https://amzn.to/2V7wITc', 'B075SYV3P5'],
  # ['cosmecomonline:10090735', 361, "L'Oreal Paris(ロレアルパリ) ロレアル パリ ル バー ア ブラッシュ ハイライト 15 パッショネイト(ハイライター)", nil, 'https://amzn.to/2VaJeRR', 'B07WNQHX3H'],
  # ['blanc-lapin:10159025', 362, 'スック ピュア カラー ブラッシュ 11 華煤 -HANASUSU', nil, 'https://amzn.to/379MrGU', 'B07W118KJ9'],
  # ['stylenara:10003139', 363, 'VT X BTS スーパーテェンプティングリップルージュ 04ラブシック', nil, nil, nil],
  # ['stylenara:10003139', 364, 'VT X BTS スーパーテェンプティングリップルージュ 08インザムード', nil, nil, nil],
  # ['k-server:10088129', 365, 'UZU 38℃/99℉ リップトリートメント -4', nil, 'https://amzn.to/3mgWgt1', 'B07YS3CGGK'],
  # ['partytime-tokyo:10025490', 366, '【ジバンシイ】ブラン ディヴァン UV シールド', nil, 'https://amzn.to/3fIw33T', 'B07BF86STK'],
  # ['blanc-lapin:10164437', 367, 'ジバンシイ GIVENCHY タン クチュール シティ バーム SPF25/PA++ 30mL C110', nil, 'https://amzn.to/3mjl5Vg', 'B086GLFJ9W'],
  # ['blanc-lapin:10164431', 368, 'ジバンシイ GIVENCHY タン・クチュール・クッション #C110', nil, nil, nil],
  # ['ab-cos:10004055', 369, 'ジバンシイ プリズム・リーブル #1 パステル・シフォン', nil, nil, nil],
  # ['cosmelink:10064205', 371, 'ジバンシイ ライナー・ディスタービア#No.01', nil, nil, nil],
  # ['strawberrynet-beauty:10008908', 372, 'ジバンシイ GIVENCHY アイブロウ・ペンシル #01', nil, 'https://amzn.to/3qfYUSj', 'B073J3ZMF2'],
  # ['blanc-lapin:10161585', 373, 'ジバンシイ GIVENCHY ボリューム・ディスタービア #01 ブラック・ディスタービア', nil, nil, nil],
  # ['cosmeland:10147365', 374, 'ジバンシイ GIVENCHY プリズム ブラッシュ 06', nil, nil, nil],
  # ['cosme-premium:10000176', 375, 'GIVENCHY / ジバンシイ ルージュ ジバンシイ #100 BEIGE CARAMAN / ベージュ カラマン', nil, nil, nil],
  # ['blanc-lapin:10159992', 376, 'ジバンシイ GIVENCHY ルージュ・ジバンシイ・ノワール #03 ナイト・イン・ゴールド', nil, nil, nil],
  # ['shitennoujidou:10403403', 377, '【Dr.Jart】Solar biome Fluid Fluide SPF50+ PA++++ / ドクタージャルト ソーラー バイオーム フルイド', nil, 'https://amzn.to/3qgdjxR', 'B08C2RMPTX'],
  # ['mimori:10005313', 379, 'ポール＆ジョー ポール & ジョー プロテクティング ファンデーション プライマー#01', nil, 'https://amzn.to/2V7WJln', 'B0861FM8N8'],
  # ['cosmecomonline:10095492', 380, 'ALLIE(アリィー) アリィー ニュアンスチェンジUV ジェル', nil, 'https://amzn.to/37eGpVw', 'B083TYS53B'],
  # ['net-pumpkin:10020413', 382, 'コーセー コスメデコルテ AQ スキン フォルミング クッションファンデーション', nil, 'https://amzn.to/3q1TDgO', 'B08BNLBX1T'],
  # ['goodservice:10002722', 383, 'VELY VELY (ブリーブリー) グラシアルウォーターサンクッション', nil, 'https://amzn.to/36bkgYS', 'B07CWS1KHH'],
  # ['goodservice:10001433', 384, 'エチュードハウス UV ダブル カット 透明 サンクッション SPF50+ PA++++', nil, 'https://amzn.to/3qiQOZ4', 'B08BFCMVT2'],
  # ['oliveyoung:10000593', 385, 'AHC ナチュラルパーフェクションダブルシールドサンスティック', nil, 'https://amzn.to/2JjuRYI', 'B07S66CGP9'],
  # ['kkcosme:10004524', 386, '[Dr.Jart+] NEW ドクタージャルトゥエブリ線デーサンスティック SPF50+ PA++++', nil, 'https://amzn.to/36czU6k', 'B07CYVGXC5'],
  # ['goodservice:10000743', 387, '3CE プライマー サン スティック', nil, 'https://amzn.to/2KOxnab', 'B07RDPQ7VG'],
  # ['aozoramall:10001501', 389, 'CLIO(クリオ) キルカバー ファンウェアクッションXP ファンデーション 03 リネン(LINEN) 15g', nil, 'https://amzn.to/2VeKZxw', 'B07TFFGHSP'],
  # ['rakuten24:10622861', 390, 'ケイト 眉マスカラ 3Dアイブロウカラー BR-2 ナチュラルアッシュ', nil, 'https://amzn.to/2Jkyca6', 'B0741B9QL9'],
  # ['freefeel:10035236', 391, '【CLIO】クリオ プロ アイパレット 03 CORAL TALK', nil, 'https://amzn.to/33rn8ip', 'B087C781CB'],
  # ['okshop:10007299', 392, 'CAROME. カロミー リキッドアイライナー ブラック ウォータープルーフ ダレノガレ明美プロデュース', nil, 'https://amzn.to/2Vbxcrx', 'B07Q347W5H'],
  # ['goodcosme2012:10005401', 393, 'マック(MAC) リキッド ラスト ライナー #POINT BLACK', nil, 'https://amzn.to/3mj3A7c', 'B00G8XRKWE'],
  # ['beautyhousehonnpo:10002714', 394, 'ポーラ POLA ディエム クルール カラーブレンドコンシーリングパウダー', nil, 'https://amzn.to/3le8r8t', 'B07Q34L3X2'],
  # ['goodcosme2012:10018101', 395, 'スリーコンセプトアイズ 3CE アイスイッチ', nil, 'https://amzn.to/3mhpfg1', 'B075QBZMRM'],
  # ['hanmaeum:10004883', 396, '[アピュ/オピュ] ジューシーパン ゼリー ブラッシャー 4.8g / APIEU Juicy Pang Jelly Blusher (BE01 Guava)', nil, 'https://amzn.to/3nZxe1K', 'B084VFT89M'],
  # ['qeen:10615065', 397, 'イヴサンローラン ルージュ ヴォリュプテ ロックシャイン #12 ロックステージ レッド', nil, 'https://amzn.to/2HL4bQ8', 'B08591KKLT'],
  # ['rakuten24:10790395', 398, 'セザンヌ パールグロウハイライト 01 シャンパンベージュ', nil, 'https://amzn.to/3mj3wV0', 'B07H97J6TP'],
  # ['innisfree-official:10000000', 399, 'Innisfree(イニスフリー)ノーシーバム ミネラルパウダー', nil, 'https://amzn.to/39o04VN', 'B008R7XX16'],
  # ['imbeautycosmetic:10000140', 400, '【CLIO】キルブロウオートハードブロウペンシル', nil, nil, nil],
  # ['rakuten24:10616188', 401, '資生堂 アイラッシュカーラー 213 (ビューラー)', nil, 'https://amzn.to/3lhtEi3', 'B01GTG29PC'],
  # ['charimeti:10000460', 402, '【CLIO】クリオ プロ アイパレット 01 Simply Pink', nil, 'https://amzn.to/3fIkHgx', 'B087C61ZTV'],
  # ['hows:11296429', 404, 'メリッシュ マルチハートカラー ジューシーオレンジ', nil, 'https://amzn.to/3muHsXX', 'B07MZD83RF'],
  # ['meihinkan:10000605', 405, 'B IDOL(ビーアイドル) B IDOLつやぷるリップ02 あざとORANGE', nil, 'https://amzn.to/2VcslpV', 'B07R5699PR'],
  # ['gmarketglobal:10034178', 406, 'ダクトジ(Dr. G) のグリーンマイルドアップサンクリーム(SPF50+/PA++++)50ml', nil, 'https://amzn.to/3mkYrvq', 'B07BVN2VMY'],
  # ['rakuten24:10633508', 407, '花王 ソフィーナ プリマヴィスタ 皮脂くずれ防止化粧下地 SPF20 PA++ 25mL', nil, 'https://amzn.to/2HL4DOk', 'B07BJ3974P'],
  # ['meihinkan:10000491', 409, 'IPSA(イプサ) クリエイティブコンシーラーe', nil, 'https://amzn.to/36g3eZC', 'B07VWRZH9X'],
  # ['alt-mart:10161039', 410, 'シュウウエムラ ステージ パフォーマー インビジブル パウダー カラレス', nil, 'https://amzn.to/2JhhVTb', 'B07R5CRQMP'],
  # ['cosmecomonline:10053927', 411, 'ケイト デザイニングアイブロウ3D #EX-4 ライトブラウン系', nil, 'https://amzn.to/36daghH', 'B07JN7M18Z'],
  # ['rainmakers-beautyfarm:10000017', 412, 'CipiCipi シピシピ シークレットキワミライナー ライトブラウン', nil, 'https://amzn.to/37bbYzu', 'B08KQJ8BD4'],
  # ['rainmakers-beautyfarm:10000020', 413, 'ふくれな プロデュースブランド：CipiCipi シピシピ 【ドレッシーシャドウ】', nil, nil, nil],
  # ['kimuchinoaki:10032686', 414, '[New] ARITAUM IDOL Real Lash Fixer 8ml／アリタウム アイドル リアル ラッシュ フィクサー', nil, 'https://amzn.to/3muHT4x', 'B01N9JSHG0'],
  # ['sungrowing:10003587', 415, 'WHOMEE(フーミー) #WHO ロング＆カールマスカラ terracotta pink テラコッタピンク', nil, 'https://amzn.to/2Jiu2PU', 'B081ZDXHTQ'],
  # ['cosmecomonline:10097639', 416, 'ドーリーウインク  マイベストライナー 濃密ブラウン', nil, nil, nil],
  # ['imbeautycosmetic:10000135', 417, 'クリオ ウォータープルーフペンライナー', nil, nil, nil],
  # ['ludia:10000514', 418, 'ロムアンド(rom&nd) ネオンムーンベターザンチーク Romand Neonmoon Better Than Cheek #03 Sleep Powder', nil, 'https://amzn.to/36g3w2E', 'B08F9VCWL1'],
  # ['beautitopping:10000863', 419, 'too cool for school アートクラスバイロダンシェーディング', nil, 'https://amzn.to/37e7hF2', 'B07HCVHDRD'],
  # ['rainmakers-beautyfarm:10000019', 420, 'ブリュレ リップティント リップカラー ＣｉｐｉＣｉｐｉ シピシピ', nil, 'https://amzn.to/39ngVI9', 'B08KHSPG8J'],
  # ['innisfree-official:10000651', 421, 'イニスフリー(Innisfree) チェリーブロッサム トーンアップ クリーム', nil, 'https://amzn.to/2VaaJuT', 'B07Q64RFKN'],
  # ['rioty:10034329', 423, 'ケイト アイシャドウ ブラウンシェードアイズN BR-5[テラコッタ]', nil, 'https://amzn.to/39udMqd', 'B0741BQH28'],
  # ['mimori:10004446', 425, 'MAC チーク パウダー ブラッシュ #メルバ', nil, 'https://amzn.to/3mh6lWP', 'B00JQSVNPI'],
  # ['cosmecosme:10028892', 426, 'クリスチャンディオール ルージュ ディオール ウルトラ リキッド', nil, 'https://amzn.to/3o4A7yn', 'B07WS7K6XN'],
  # ['qulin:10007820', 427, 'BOY DE CHANELシャネル CHANEL シャネル ボーイ ドゥ ファンデーション', nil, 'https://amzn.to/3mkZ4oM', 'B07NC1KY13'],
  # ['thebeautyclub:10236731', 428, 'アーバンディケイ URBAN DECAY ネイキッド チェリー パレット', nil, 'https://amzn.to/3mgtQPT', 'B07TDWTX4Y'],
  # ['kousuiandco:10011243', 429, 'スキン セッティング トーンアップ サン ベース 40ml 【JUNGSAEMMOOL】', nil, 'https://amzn.to/3lhuprp', 'B07VR92K76'],
  # ['auc-azzuro-:10049370', 430, 'シュウウエムラ アンリミテッドグロー フルイド', nil, 'https://amzn.to/3mj555k', 'B08K7BJL9W'],
  # ['charimeti:10000356', 431, 'THE SAEM(ザ セム) 日本公式 (the SAEM) ミネラライジング ポアコンシーラー', nil, 'https://amzn.to/3mnuwmE', 'B07W1HY1FB'],
  # ['beautitopping:10000233', 432, 'Clio Prism Air Highlighterクリオプリズムエアハイライター', nil, 'https://amzn.to/36dYX96', 'B07F6Y6QSM'],
  # ['d-holic:10058262', 433, 'VAVI MELLO バレンタイン ボックス Vallentine Box', nil, 'https://amzn.to/3fHnMNQ', 'B0748D3WY5'],
  # ['e-newlife:10003119', 434, 'フローフシ ウズ アイオープニングライナー ブラウンブラック (1本) アイライナー UZU', nil, 'https://amzn.to/3lcXrbD', 'B07PDRD6M4'],
  # ['cosmecomonline:10076391', 435, 'ETUDE (エチュード) デュアルワイドマスカラ ローズブラウン', nil, 'https://amzn.to/3mg4TE0', 'B07DX46L9W'],
  # ['benavi:10059797', 436, 'アディクション ザ アイシャドウ 93', nil, 'https://amzn.to/33paKQ8', 'B01MQSYL7R'],
  # ['blanc-lapin:10152744', 437, 'シャネル CHANEL ルージュ アリュール リクィッド パウダー #964', nil, 'https://amzn.to/3miqTOK', 'B07QGHT4BP'],
  # ['partytime-tokyo:10028660', 438, 'LANCOME(ランコム) UV エクスペール トーン アップ ローズ', nil, 'https://amzn.to/37gxliT', 'B07NY17XQ1'],
  # ['biasu:10004841', 439, 'シュウ ウエムラ アンリミテッドラスティングフルイド # 664 Medium Light She', nil, 'https://amzn.to/3mtNqba', 'B082HLW6VM'],
  # ['kirei-mitsuketa:10011499', 440, 'ミシャ ザ コンシーラー', nil, 'https://amzn.to/2JrKQnq', 'B07ZTGCNQ4'],
  # ['grandberry:10002089', 441, 'コスメデコルテ フェイスパウダー', nil, 'https://amzn.to/2JkCv5k', 'B07N3MC1QJ'],
  # ['asterisk01:10002130', 442, 'CHANEL シャネル ボーム エサンシエル （トランスパラン）', nil, 'https://amzn.to/2Vf27mJ', 'B07MQ1GYPQ'],
  # ['asterisk01:10002130', 443, 'IPSA イプサ アイブロウペンシル', nil, nil, nil],
  # ['kirei-mitsuketa:10011933', 444, 'セザンヌ シングルカラーアイシャドウ 01', nil, 'https://amzn.to/3fHoCds', 'B08JZC3WWW'],
  # ['kirei-mitsuketa:10011933', 445, 'セザンヌ シングルカラーアイシャドウ 02 ニュアンスピンク', nil, 'https://amzn.to/3mnva3y', 'B07N2878X3'],
  # ['kirei-mitsuketa:10011933', 446, 'セザンヌ シングルカラーアイシャドウ 03 マットレッド', nil, 'https://amzn.to/3mcx1Ia', 'B07N2B5V72'],
  # ['kirei-mitsuketa:10011933', 447, 'セザンヌ シングルカラーアイシャドウ 04 クリアラメ', nil, 'https://amzn.to/3fKhwVn', 'B07N29VSF6'],
  # ['e-newlife:10003119', 448, 'フローフシ ウズ アイオープニングライナー ブラック (1本) アイライナー UZU', nil, 'https://amzn.to/2JhjmB3', 'B07PK3RXZ2'],
  # ['syouwa:10005149', 449, 'マジョリカ マジョルカ ラッシュエキスパンダー リキッドエクステ EX BK999', nil, 'https://amzn.to/3mcmJb3', 'B06Y62G25P'],
  # ['rakuten24:10755086', 450, 'ヴィセ リシェ リップ&チーク クリーム コーラルピンク PK-4', nil, 'https://amzn.to/3mirrUO', 'B00NE7CWTI'],
  # ['cosme-dream:10002825', 451, 'MAQUILLAGE(マキアージュ) ドラマティックルージュEX 口紅 RD533', nil, 'https://amzn.to/37fPkGe', 'B07R85SDJ1'],
  # ['kind-s-care:10018571', 452, 'コフレドール コントゥアリップデュオ 06 シアーブラック 口紅', nil, 'https://amzn.to/3lead9D', 'B07H99WZX4'],
  # ['kumokumo-square:10025575', 453, 'マジョリカ マジョルカ クリーム・デ・チーク', nil, 'https://amzn.to/36gv5J3', 'B00A13ZMQS'],
  # ['viviange:10007819', 454, 'アディクション ザ アイシャドウ#074 Fudge', nil, 'https://amzn.to/3o8oFlB', 'B071CMCSCN'],
  # ['helenarubinstein:10000016', 455, 'ヘレナ ルビンスタイン(HELENA RUBINSTEIN) ラッシュ クイーン フェリン ブラック WP(ウォータープルーフ) #01 ブラック', nil, 'https://amzn.to/3lhblt5', 'B007P24BOC'],
  # ['craftpark:10005709', 456, 'ユアン ローズリップクリーム', nil, nil, nil],
  # ['laurette:10000730', 457, 'Morphe モーフィー 8色 チークパレット 8W ウォームトーン', nil, nil, nil],
  # ['getfish:10015795', 458, 'ディオール ディオール アディクト リップ グロウ 選べる限定3色 -Dior- 009 ホロ パープル', nil, 'https://amzn.to/2HMytlH', 'B078KDSCNF'],
  # ['goodcosme2012:10021518', 459, 'クラランス CLARINS コンフォート リップオイル  04 キャンディー', nil, 'https://amzn.to/36g4Wu0', 'B0824T28B4'],
  # ['kkcosme:10003689', 461, '(the saem ザセム) Cover Perfection Ideal Concealer Duo カバーパーフェクションアイディールコンシーラーデュオ コンンシーラースティックタイプ', nil, 'https://amzn.to/3fJgAkd', 'B01GUQJ8M8'],
  # ['soukai:11032574', 462, 'ヴィセ アヴァン シングルアイカラー ORANGE 036', nil, 'https://amzn.to/3o7ODFw', 'B07DHQP5HF'],
  # ['jungsaemmool:10000028', 463, 'アーティスト グロー タッチ/【JUNGSAEMMOOL】(ハイライト）', nil, nil, nil],
  # ['tomods-ap:10032849', 464, 'CandyDoll ブライトピュアベースCC ラベンダー', nil, 'https://amzn.to/3laEFl6', 'B08GS28N28'],
  # ['pupuhima:10044295', 465, 'ヘビーローテーション カラーリングアイブロウ', nil, 'https://amzn.to/2Vep7lS', 'B073FJDLCW'],
  # ['cosmeland:10079067', 466, 'ランコム ブラッシュ スプティル', nil, 'https://amzn.to/33s4CGJ', 'B014GH69FC'],
  # ['sky-hy:10010214', 467, 'RICAFROSH 古川優香プロデュース リップティント ジューシーリブティント (02バラタレッド)', nil, 'https://amzn.to/3llbSKC', 'B08CVD9CXR'],
  # ['ab-cos:10004899', 468, 'Christian Dior(クリスチャンディオール) クリスチャン ディオール アディクト リップ マキシマイザー 001', nil, 'https://amzn.to/2JrLrFG', 'B001U2NQBW'],
  # ['jungsaemmool:10000112', 469, '【ジョンセンムル(JUNG SAEM MOOL)公式】ジョンセンムル スキン セッティング トーンアップ サン クッション SPF 50+ / PA+++', nil, 'https://amzn.to/2J89TMU', 'B08DHPL3HN'],
  # ['sara-style:10003806', 470, 'Clio Prism Air Highlighter クリオプリズムエアハイライター', nil, 'https://amzn.to/3qjZKNQ', 'B07GYL5P2T'],
  # ['g-plus:10030131', 471, 'ランコム ブラッシュ スプティル SP 351/クリスマスコフレ ミニサイズ', nil, nil, nil],
  # ['cosmecomonline:10091591', 472, 'ドーリーウインク  イージーラッシュ NO.8 つけまつげ  アットコスメ', nil, nil, nil],
  # ['cosme-world:10011401', 473, 'クリニーク(CLINIQUE) チーク ポップ #02(ピーチ ポップ)', nil, 'https://amzn.to/3ml6EQy', 'B01M8JCQZ5'],
  # ['cosme-click:10009764', 474, 'dior ルージュディオール 999', nil, 'https://amzn.to/3fKqemv', 'B07G2QYBFW'],
  # ['shibuyawalker:10000852', 476, 'CandyDoll キャンディドール オイルティントリップ', nil, 'https://amzn.to/37egRb3', 'B07RBDN4TJ'],
  # ['akarica:10929133', 477, 'ピュア コスチューム コスメ マジックマスカラ ピンクパープル', nil, 'https://amzn.to/3leIgyE', 'B06VWW8Y6J'],
  # ['4cs-cure:10000123', 479, 'オールインワンモイストエマルジョン', nil, 'https://amzn.to/3mhrPmd', 'B07NPNWCN5'],
  # ['meihinkan:10000416', 480, 'ザ・ギンザ ディープクレンジングオイル', nil, 'https://amzn.to/3lgiDxn', 'B01N35YFRE'],
  # ['ssbiyo:10000933', 481, 'ザ・ギンザ クリーミークレンジングフォーム', nil, 'https://amzn.to/2JkAXZ0', 'B01N64W5ZA'],
  # ['cosmeland:10145060', 482, 'Dior(ディオール) プレステージ ユイル ド ローズ', nil, 'https://amzn.to/39pNFAG', 'B078MZCDLM'],
  # ['cosmelink:10053305', 483, 'クリスチャンディオール CHRISTIAN DIOR オー・ド・ヴィ ラ ローション', nil, 'https://amzn.to/3o9mhLn', 'B078YK97J4'],
  # ['diogreco:10002570', 484, "DIOR ディオール オー・ド・ヴィ ル セラム L' OR DE VIE LE SERUM", nil, nil, nil],
  # ['stylenara:10002706', 486, 'ディオール（Dior） プレステージ ラ クレーム - 極上のテクスチャー', nil, 'https://amzn.to/36kXKNr', 'B0793KQNM4'],
  # ['healco:10000027', 487, 'チャアンドパク CNP インビジブル ピーリング ブースター', nil, 'https://amzn.to/2Jks41B', 'B00M91AJGI'],
  # ['velyvelyjapan:10000017', 488, 'VELY VELY Hyaluronic Moisture Ampoule 40ml / ブリーブリー ヒアルロン酸 水光アンプル 40ml', nil, 'https://amzn.to/3ml1e7S', 'B07P7K6CF4'],
  # ['animalmaru:10001546', 489, 'シュウウエムラ (shu uemura) 2019 クリスマスコフレ ピカチュウ コラボ ピカシュウ アイ パレット サンダー ショック', nil, 'https://amzn.to/3q35GdM', 'B07Z1JZXHQ'],
  # ['blanc-lapin:10152744', 491, 'シャネル ルージュアリュールリクィッドパウダー # 964 Bittersweet', nil, 'https://amzn.to/3oabctx', 'B07MBZTCQ8'],
  # ['cosme-off:10003466', 492, 'イヴサンローラン ルージュヴォリュプテ シャイン #83', nil, 'https://amzn.to/36fGtoH', 'B07N9XNH3D'],
  # ['196plus:10000004', 493, 'ココミスト 【 毛穴ケア 角質ケア 保湿 毛穴 洗顔 クレンジング 無添加 クレンジングウォーター ヒト幹細胞培養液 毛穴レス 196plus 】 150ml ボトル1本 & 詰め替え 1個 セット', nil, 'https://amzn.to/3mnbhcH', 'B07W6LYRGC'],
  # ['nichibi-store:10000287', 494, 'エゴイプセ クレンジングバーム', nil, 'https://amzn.to/37cZdV6', 'B07L13QQBK'],
  # ['leaps21:10000010', 495, 'FABIUS クロノセル ヒト幹細胞 エイジングケア 美容液 男女兼用', nil, 'https://amzn.to/37kZdCj', 'B07PSGCFN8'],
  # ['nature-natural:10000223', 496, 'LANCOME（ランコム） ビューティーボックス 2019 コフレ ジェネフィックアドバンスト ラプソリュ ルージュ リップ パレット（限定品） など 14点セット', nil, 'https://amzn.to/3qdntzd', 'B0851D5KP9'],
  # ['akaran:10000126', 497, 'Agarism トーンアップuvスティック', nil, 'https://amzn.to/39CWw27', 'B084S67L8R'],
  # ['cosmerecipe:10001033', 499, 'ESTEE LAUDER(エスティローダー) ダブルウェア ステイ イン プレイス メークアップ', nil, 'https://amzn.to/3q8AdH7', 'B00JX88YJE'],
  # ['rakuten24:10902662', 500, 'ザ・セム CPコンシーラーDUO 02 リッチベージュ', nil, 'https://amzn.to/33uzkPE', 'B07RG6GVV3'],
  # ['axas-co:10070845', 501, 'キャンメイク マシュマロフィニッシュパウダーMO マットオークル', nil, 'https://amzn.to/3fMluwG', 'B005MVFRXM'],
  # ['supplement-fan:10002029', 502, 'ヘビーローテーションカラーリングアイブロウN03/アッシュブラウン', nil, 'https://amzn.to/3qbTebW', 'B005F750JY'],
  # ['meyoucosme:10001023', 503, 'エチュードハウス(ETUDE HOUSE) プレイカラー アイシャドウ ピーチファーム ピンク', nil, 'https://amzn.to/33r1WZP', 'B07B1WBC81'],
  # ['kyoto-shion:10000361', 504, 'オペラ マイラッシュアドバンスト', nil, 'https://amzn.to/3o65OaB', 'B06WP5D9QZ'],
  # ['zagzag:10078214', 505, 'キャンメイク パウダーチークス PW43 コーラルホログラム 43コーラルホログラム', nil, 'https://amzn.to/2Vdaor4', 'B07SSFL9T5'],
  # ['cosmecomonline:10091569', 506, 'rom&nd(ロムアンド) 【正規品】JLティント(#08アップルブラウン) 口紅', nil, 'https://amzn.to/3qlLap4', 'B0813R8K1P'],
  # ['fashionbeauty:10003884', 507, 'bk7 マジックバブルエッセンスパック', nil, 'https://amzn.to/37glEZr', 'B07NVHZWFG'],
  # ['rakuten24:10942650', 509, 'コフレドール スキンイリュージョンプライマーUV 化粧下地 25ml', nil, 'https://amzn.to/39oPptL', 'B0831MRKRL'],
  # ['fandora:10013453', 510, 'コフレドール ネオコートファンデーション 02', nil, 'https://amzn.to/33sMblk', 'B0831MD9LW'],
  # ['vely-deux:10001945', 511, 'RMK メイクアップ ベース 30ml', nil, 'https://amzn.to/3fQyMZ9', 'B06XKB73RF'],
  # ['ssbiyo:10001350', 512, 'RMK リクイドファンデーション 103', nil, 'https://amzn.to/33oTZog', 'B00AYG8NCW'],
  # ['velyvely:10002532', 513, 'アディクション ザ アイシャドウ #080', nil, 'https://amzn.to/37j8QBB', 'B07255FBDM'],
  # ['vely-deux:10002438', 514, 'アディクション ザ アイシャドウ #092', nil, 'https://amzn.to/3o7yUGA', 'B07GB46N5F'],
  # ['bi-sai:10744957', 516, 'ジルスチュアート チーク＆アイブロッサム 02', nil, 'https://amzn.to/33tSqVX', 'B07FVF4M3C'],
  # ['axas-co:10085598', 517, 'ディオール cdアディクトリップグロウ 007', nil, 'https://amzn.to/2KQ9Ndb', 'B078KDDRCL'],
  # ['telemedia:10119476', 518, '【ジルスチュアート】 フォーエバージューシ― オイルルージュ ティント #02', nil, 'https://amzn.to/33strCj', 'B07FNBWDYS'],
  # ['osharecafe:10003778', 519, 'イヴサンローラン ラディアントタッチ #02 ルミナスアイボリー', nil, 'https://amzn.to/33mRClN', 'B00SR8ZSQS'],
  # ['botanic-garden:10034065', 520, 'スガオ(SUGAO) スノーホイップクリーム ピンクホワイト', nil, 'https://amzn.to/3mnm4Uq', 'B07PGTKYXP'],
  # ['kireiplaza:10014259', 521, 'クレヨン タッチミー アイブロウパウダー ライトブラウン 1601', nil, 'https://amzn.to/3lkaWX0', 'B076D7YTLG'],
  # ['etudehouse:10000870', 522, 'エチュードハウス マイビューティーツール150 チークブラシ', nil, nil, nil],
  # ['etudehouse:10001185', 523, 'ETUDE (エチュード) オールフィニッシュ リップティントリムーバー', nil, 'https://amzn.to/3qbujVO', 'B01F2XQQ84'],
  # ['verystore:10004616', 524, 'DUO ザ クレンジングバーム【しっとりタイプ】', nil, 'https://amzn.to/3meOgZo', 'B07W4JB7RL'],
  # ['pluspet:10008671', 525, '肌ナチュール 炭酸洗顔フォーム', nil, nil, nil],
  # ['yamada-denki:10470140', 526, 'イヴ パエンナ ハトムギ美容水 ｉｎビタミンＣ誘導体', nil, 'https://amzn.to/2JskLEN', 'B07MK4ZPLV'],
  # ['kusurinofukutaro:10071092', 527, 'パウダーブロウクリエイター', nil, nil, nil],
  # ['sian:10005581', 528, 'ケイト 眉マスカラ 3Dアイブロウカラー BR-3 ソフトブラウン', nil, 'https://amzn.to/3lcVOKY', 'B0716D8TJC'],
  # ['dupwebshop:10003012', 529, 'オリシキ アイリッドスキンフィルム (ふたえ/二重整形リキッド)', nil, 'https://amzn.to/3q6RvVj', 'B07BB5QRTS'],
  # ['auc-tansera:10202329', 530, 'ZEESEAアイシャドウパレットメイクアップ16色大英博物館シリーズ 可愛いアイシャドウパレット#04', nil, 'https://amzn.to/37fJAfH', 'B084GNXDF9'],
  # ['zyuuzitsu-life:10002490', 531, 'ZEESEA(ズーシー)ピカソの世界名画エレガント設計 919', nil, 'https://amzn.to/36gHZa0', 'B084ZM57MZ'],
  # ['pukashell:10000008', 533, 'ポール&ジョー プロテクティング ファンデーション プライマーS 01', nil, 'https://amzn.to/2Ju0kaU', 'B018W4RSQE'],
  # ['wisemonkey:10000035', 534, 'NARS / ラディアントクリーミーコンシーラー', nil, 'https://amzn.to/36gI1i8', 'B01DZN3LPE'],
  # ['stylenara:10003026', 535, 'ランコム タンイドル ウルトラ ウェア リキッド', nil, 'https://amzn.to/3ljomT4', 'B08GFW29B2'],
  # ['twcj:10000447', 536, 'エクセル パウダー&ペンシル アイブロウex pd10', nil, 'https://amzn.to/37hEuj0', 'B015FG76SC'],
  # ['kenkocom:11933342', 538, 'キャンメイク シルキースフレアイズ 02', nil, 'https://amzn.to/3lk1P8s', 'B0822ZCZW5'],
  # ['foremost:10148808', 539, 'セザンヌ ナチュラルチークN 16 カシスローズ', nil, 'https://amzn.to/3fPUuwC', 'B07H95M1H3'],
  # ['zagzag:10078063', 540, 'キャンメイク クイックラッシュカーラーBR ブラウン', nil, 'https://amzn.to/3fKOhSx', 'B07SD9R731'],
  # ['cosmediva:10005519', 541, 'オペラ リップティントN 02', nil, 'https://amzn.to/2VgmcZK', 'B07S72YW5B'],
  # ['cia-con:10005449', 542, 'アーティラル スペリア 2week 1箱6枚入り', nil, 'https://amzn.to/37koNrc', 'B079TJLTNW'],
  # ['fandora:10012459', 544, 'ケイト スキンカラーコントロールベース', nil, 'https://amzn.to/33uB7Em', 'B07XR2QGGV'],
  # ['bccosme:10000059', 546, 'トゥーフェイスド（TOO FACED） ダイヤモンドライト マルチユース ハイライター(ダイヤモンド ファイア)', nil, 'https://amzn.to/3ojckLx', 'B078JJMGPZ'],
  # ['g-plus:10015362', 547, 'ポール&ジョー パウダー ブラッシュ #02 リフィル', nil, 'https://amzn.to/3qbuKiU', 'B018W4RJDG'],
  # ['kirei-mitsuketa:10004380', 548, 'リンメル ショコラスウィート アイズ 102', nil, 'https://amzn.to/3qb6kWN', 'B089YSPJ8Q'],
  # ['kimuchinoaki:10026475', 549, 'Holika Holika Jewel-light Under Eye Maker', nil, 'https://amzn.to/2HOOcAJ', 'B0783MJGR9'],
  # ['okshop:10003031', 550, 'ヒロインメイク スムースリキッドスーパーキープ', nil, 'https://amzn.to/3ldqJXu', 'B074PWFNLG'],
  # ['ikedashop:10025113', 551, 'RICAFROSH 古川優香 ジューシーリブティント 02バラタレッド', nil, 'https://amzn.to/33pdlt6', 'B08CVBYLSR'],
  # ['cnplaboratory:10000020', 554, 'cnp laboratory プロポリスアンプルミスト', nil, 'https://amzn.to/2HNBJgy', 'B07D6KRK55'],
  # ['charimeti:10000458', 555, 'クリオ キル カバー グロウクッション ０４', nil, 'https://amzn.to/39p6qUI', 'B08B8261X4'],
  # ['coscos-official:10000364', 556, 'メディヒール nmf アクアリング  アンプルマスク', nil, 'https://amzn.to/3fKO3L4', ' B073RDY5NN'],
  # ['charimeti:10000602', 558, 'バニラコ クリーン イット ゼロ クレンジング バーム', nil, 'https://amzn.to/3o7gYfc', 'B07BSVJ4H8'],
  # ['ludia:10000528', 559, 'lilybyred リリーバイレッド リップ ティント ムード ライアー', nil, 'https://amzn.to/3fMzwyp', 'B079NW855N'],
  # ['axas-co:10086765', 560, 'ミノン アミノモイスト バランシングベース UV', nil, 'https://amzn.to/2JqMCoU', 'B07MW585CX'],
  # ['net-cosme2019:10024781', 561, 'クリオ プロアイパレット (002ブラウン)', nil, 'https://amzn.to/36iMErX', 'B07N85X3KJ'],
  # ['tokyu-hands:11490348', 562, 'セザンヌ シングルカラーアイシャドウ 01 パールベージュ', nil, 'https://amzn.to/3oczvqN', 'B07N2BR2SJ'],
  # ['cosmecomonline:10081144', 564, 'ETUDE (エチュード) ピクニック エアームースアイズ BR402', nil, 'https://amzn.to/3oaERT5', 'B07PFGZY49'],
  # ['angfa:10000339', 566, 'アンファースカルプ d ボーテ ピュアフリーマスカラ', nil, 'https://amzn.to/36kDE5U', 'B0721P3X2F'],
  # ['soukai:11032496', 567, 'ヴィセ リシェ フォギーオン チークス be300', nil, 'https://amzn.to/39qjh96', 'B01KLNGHQ6'],
  # ['nihon-bikou:10002555', 568, 'ケイト レッドヌードルージュ', nil, 'https://amzn.to/2JhYk5G', 'B0831LLQYM'],
  # ['rakuten24:10976302', 569, 'エテュセ フェイスエディションプライマー フォーオイリースキン', nil, 'https://amzn.to/39qVm9O', 'B086ZDC6P1'],
  # ['kireimitsuketa2:10017647', 570, 'エテュセフェイスエディションパウダー', nil, 'https://amzn.to/2JjWKjB', 'B086ZD6N4D'],
  # ['rakuten24:10310873', 572, 'エテュセ クリームアイライナー WP ブラウン', nil, 'https://amzn.to/2JtPBgj', 'B00CSGHD9A'],
  # ['rakuten24:10960088', 573, 'エテュセ アイエディション マスカラベース', nil, 'https://amzn.to/2Jm6r19', 'B085R7NLBV'],
  # ['rakuten24:10960083', 574, 'ettusais(エテュセ) アイエディション(マスカラ) 02 バーガンディブラウン', nil, 'https://amzn.to/3qaIKcx', 'B085RNRX4F'],
  # ['cosmecomonline:10097635', 576, '(エテュセ) アイエディション(ブロウマスカラ) 04 アッシュグレー', nil, 'https://amzn.to/3qjcMez', ' B085RC8QGN'],
  # ['cosmecomonline:10097635', 578, 'エテュセ リップエディション グロス', nil, 'https://amzn.to/39msRtP', 'B085RL2WDM'],
  ['cosmelink:10065063', 579, 'ケイト スキンカラーコントロールベース', nil, 'https://amzn.to/2KQbEyF', 'B07XQQK69G'],
  ['rakuten24:10901843', 580, 'ケイト フェイス&ネックホワイター', nil, 'https://amzn.to/3qlNs7E', 'B07TDNRL32'],
  ['fandora:10009697', 581, 'ケイト-BBクリーム ウォーターインオイル BB 01', nil, 'https://amzn.to/39r0Voo', 'B07419N3ZV'],
  ['fandora:10013946', 582, 'KATE スティックコンシーラーA ライトベージュ', nil, 'https://amzn.to/3o5EJV1', 'B0741CGNCR'],
  ['fandora:10012515', 583, 'ケイト フェイスパウダーa ナチュラルタイプ', nil, 'https://amzn.to/3qdqz6j', 'B0741CGNB9'],
  ['scbmitsuokun1972:10051778', 584, 'ケイト ブラウンシェードアイズn br-4', nil, 'https://amzn.to/36j9i3K', 'B0741B34SJ'],
  ['sian:10008179', 585, 'ケイト ザ アイカラー 032 マットレッド アイシャドウ', nil, 'https://amzn.to/37hD0Fx', 'B07Q288QCH'],
  ['k-akakabe:10000389', 586, 'ケイト レアフィットジェルペンシル br-2', nil, 'https://amzn.to/37kqbdo', 'B07H7S65N3'],
  ['rakuten24:10901833', 587, 'ケイト ラッシュフォーマー(クリア) CL-1 マスカラ ブラック', nil, 'https://amzn.to/37lOGHh', 'B07TCKH3DV'],
  ['fandora:10013826', 588, 'ケイト アイブロウペンシルa br-3', nil, 'https://amzn.to/37dUdj0', 'B07BWMJP5R'],
  ['fandora:10013886', 589, 'ケイト 3dアイブロウカラー br-2', nil, 'https://amzn.to/39xteBA', 'B07FKS8TGR'],
  ['sian:10005662', 590, 'ケイト ディメンショナルルージュrd1', nil, 'https://amzn.to/2KRvSrR', 'B07DRRZP2S'],
  ['rakuten24:10616513', 592, 'Integrated Mineral Base CC', nil, 'https://amzn.to/39oCZlN', 'B01LSJAUDS'],
  ['rakuten24:10616484', 593, 'インテグレート プロフィニッシュ ファンデーション オークル', nil, 'https://amzn.to/2KIlUsA', 'B01LVUPHWD'],
  ['rakuten24:10616884', 594, '資生堂 インテグレート マツイクガールズラッシュ お色気ロング', nil, 'https://amzn.to/3fOB6jC', 'B016ZC0RM2'],
  ['cliojapan:10000055', 595, 'ダーマトリー ハイポアラー ジェニック シカレスキューガーゼパッド', nil, 'https://amzn.to/2VbJlN7', 'B07BMGDNKL'],
  ['cliojapan:10000056', 596, 'ダーマトリー ハイポアラー ジェニック シカアンプル', nil, 'https://amzn.to/2VgI87e', 'B07ZH5DQJC'],
  ['cliojapan:10000484', 597, 'グーダル 青いみかん ビタcアイジェルパッチ', nil, nil, nil],
  ['cliojapan:10000462', 598, 'クリオ キルカバー フィクサー クッションファンデーションリネン', nil, 'https://amzn.to/2VlEdWt', 'B07JZNDLVT'],
  ['cliojapan:10000363', 599, 'クリオ ステイパーフェクトプレスドパウダー', nil, nil, nil],
  ['cliojapan:10000470', 600, 'クリオ プロプレーメイクアップブラシセット', nil, nil, nil],
  ['cliojapan:10000241', 601, 'クリオ キルブロウオートハードブロウペンシル', nil, 'https://amzn.to/3lgvnE5', 'B0798GL949'],
  ['cliojapan:10000381', 602, 'クリオ プリズムエア アイパレット ０３', nil, 'https://amzn.to/36k5L4Q', 'B08GKD9NB7'],
  ['cliojapan:10000026', 603, 'クリオ プリズムエア ハイライト 04', nil, 'https://amzn.to/33uCOlc', 'B08143K9YZ'],
  ['compshop:10000201', 604, 'クリオシャープシンプルウォータープルーフペンシルアイライナー', nil, 'https://amzn.to/2HOZAfZ', 'B07TWF9D9J'],
  ['cliojapan:10000233', 605, 'クリオキルラッシュ スーパープルーフ マスカラ 03', nil, 'https://amzn.to/3ml2RT5', 'B08CDG8LXP'],
  ['cliojapan:10000463', 606, 'クリオ メルティングシアーリップ', nil, nil, nil],
  ['fandora:10010458', 608, 'プリマヴィスタ 皮脂くずれ防止 化粧下地', nil, 'https://amzn.to/3qawQPU', 'B079BRLKJX'],
  ['plazastyle:10017456', 609, 'WHOMEE(フーミー) モイストBBクリーム', nil, 'https://amzn.to/3fJGrsm', 'B0851RKKJ1'],
  ['bemore-m:10054634', 610, 'クリスチャンディオール【#000】カプチュール ドリームスキン モイスト クッション', nil, 'https://amzn.to/33tftjD', 'B07FDTG1KN'],
  ['cosmecomonline:10024496', 611, 'キャンメイク カラーミキシングコンシーラー01 ライトベージュ', nil, 'https://amzn.to/36fLcqr', 'B00NW3F8T0'],
  ['0101marui:11395582', 612, 'キャンメイク シェーディングパウダー０３', nil, 'https://amzn.to/3nYGfs6', 'B008RI8DB0'],
  ['missha:10002693', 613, 'アピュ ジューシーパン ゼリー ビーム ハイライター', nil, 'https://amzn.to/3qcVZti', 'B084CXHKM5'],
  ['cosmecosme:10010963', 614, 'アナスイ アイブロウ カラー コンパクト #03', nil, 'https://amzn.to/3o7rTFP', 'B00C5XC8WI'],
  ['cosmeland:10134931', 615, 'マック(MAC) ミネラライズ ブラッシュ #ウォーム ソウル', nil, 'https://amzn.to/3o43IrS', 'B00OPYAH28'],
  ['sugartime:10110927', 616, 'エレガンス ラ プードル オートニュアンス', nil, 'https://amzn.to/39qkopi', 'B00C6SLE5O'],
  ['kumokumo-square:10059604', 617, 'ラブライナー リキッド ダークブラウン', nil, 'https://amzn.to/3mkLMsC', 'B0756SPLC5'],
  ['camine:10005117', 618, 'リップティント ジューシーリブティント (01オランジェット)', nil, 'https://amzn.to/3mpO21S', 'B08CVC2K3K'],
  ['plazastyle:10015592', 619, 'キングダム ツーステップマスカラ', nil, 'https://amzn.to/3fQCEJF', 'B00TESOL2M'],
  ['qeen:10614299', 620, 'アナスイ アイブロウ カラー コンパクト', nil, 'https://amzn.to/37l2sJZ', 'B00C5XC8KA'],
  ['yuidrug:10018546', 621, 'エチュードハウス(ETUDE HOUSE) ピクニック エアームースアイズ PK001', nil, 'https://amzn.to/2VgoGr2', 'B07PGMK87Z']
]

ids.each do |id|
  items = RakutenWebService::Ichiba::Item.search(itemCode: id[0])
  if items.present?
    items.each do |item|
      name = item.name
      price = item.price
      rakuten_url = item.affiliate_url

      ##### 本番用 #####
      # url = item["mediumImageUrls"][0]
      # file = "#{Rails.root}/db/2020amazon_item/#{id[1]}.png"
      # open(file, 'wb') do |pass|
      #   open(url) do |recieve|
      #     pass.write(recieve.read)
      #   end
      # end

      ##### テスト用 #####
      # url = item["mediumImageUrls"][0]
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

      if Item.find_by(item_number: id[1]).blank? && File.exist?("#{Rails.root}/db/2020amazon_item/#{id[1]}.png")
        Item.create!(
          name: name,
          item_number: id[1],
          image: open("#{Rails.root}/db/2020amazon_item/#{id[1]}.png"), ##### 本番用 #####
          #image: open("#{Rails.root}/db/images/rakuten_api_item/#{id[1]}.png"), ##### テスト用 #####
          price: price,
          amazon_url: id[4],
          asin: asin,
          rakuten_url: rakuten_url,
          url: id[0]
        ) 
      end
    end
  end
end