questions = [
  # ===== 計算 / easy =====
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "7 + 5 = ?",   "answer" => "12", "hint" => "7 に 5 を足そう" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "13 - 4 = ?",  "answer" => "9",  "hint" => "13 から 4 を引こう" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "8 + 11 = ?",  "answer" => "19", "hint" => "一の位から足してみよう" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "17 - 9 = ?",  "answer" => "8",  "hint" => "10 を引いてから 1 を足そう" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "6 + 14 = ?",  "answer" => "20", "hint" => "6 と 4 で 10 になるよ" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "15 - 7 = ?",  "answer" => "8",  "hint" => "15 から 7 を引こう" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "9 + 8 = ?",   "answer" => "17", "hint" => "9 に 1 を足して 10 にしてから" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "20 - 6 = ?",  "answer" => "14", "hint" => "20 から 6 を引こう" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "4 + 16 = ?",  "answer" => "20", "hint" => "4 と 16 を足そう" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "18 - 5 = ?",  "answer" => "13", "hint" => "18 から 5 を引こう" } },

  # ===== 計算 / normal =====
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "24 × 3 = ?",  "answer" => "72",  "hint" => "20×3 と 4×3 に分けよう" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "45 + 37 = ?", "answer" => "82",  "hint" => "40+30 と 5+7 に分けよう" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "16 × 4 = ?",  "answer" => "64",  "hint" => "16 を 4 回足すか、10×4+6×4" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "38 + 29 = ?", "answer" => "67",  "hint" => "38+30 してから 1 引こう" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "27 × 5 = ?",  "answer" => "135", "hint" => "27 を 2 倍して半分にしよう" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "53 + 48 = ?", "answer" => "101", "hint" => "53+50 してから 2 引こう" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "32 × 6 = ?",  "answer" => "192", "hint" => "30×6 と 2×6 に分けよう" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "41 + 56 = ?", "answer" => "97",  "hint" => "40+50 と 1+6 に分けよう" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "18 × 7 = ?",  "answer" => "126", "hint" => "20×7 から 2×7 を引こう" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "64 + 28 = ?", "answer" => "92",  "hint" => "64+30 してから 2 引こう" } },

  # ===== 計算 / hard =====
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "23 × 14 - 56 = ?", "answer" => "266", "hint" => "23×14 を先に計算しよう" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "17 × 25 - 89 = ?", "answer" => "336", "hint" => "17×25 を先に計算しよう" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "34 × 12 - 78 = ?", "answer" => "330", "hint" => "30×12 と 4×12 に分けよう" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "28 × 15 - 45 = ?", "answer" => "375", "hint" => "28×15 を先に計算しよう" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "19 × 23 - 67 = ?", "answer" => "370", "hint" => "20×23 から 23 を引いて計算" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "42 × 11 - 34 = ?", "answer" => "428", "hint" => "×11 は自分自身をずらして足すと楽" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "26 × 18 - 92 = ?", "answer" => "376", "hint" => "26×18 を先に計算しよう" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "31 × 16 - 48 = ?", "answer" => "448", "hint" => "30×16 と 1×16 に分けよう" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "22 × 21 - 73 = ?", "answer" => "389", "hint" => "22×21 を先に計算しよう" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "35 × 13 - 55 = ?", "answer" => "400", "hint" => "35×13 を先に計算しよう" } },

  # ===== 記憶力 / easy（4桁）=====
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 3, 7, 2, 9 ], "answer" => "3729", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 5, 1, 8, 4 ], "answer" => "5184", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 6, 3, 7, 1 ], "answer" => "6371", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 2, 9, 4, 6 ], "answer" => "2946", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 8, 5, 1, 3 ], "answer" => "8513", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 4, 7, 9, 2 ], "answer" => "4792", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 1, 6, 3, 8 ], "answer" => "1638", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 9, 2, 5, 7 ], "answer" => "9257", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 7, 4, 6, 3 ], "answer" => "7463", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 3, 8, 2, 5 ], "answer" => "3825", "hint" => "最初の数字から順に入力" } },

  # ===== 記憶力 / normal（6桁）=====
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 4, 8, 2, 6, 1, 9 ], "answer" => "482619", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 7, 3, 5, 1, 8, 4 ], "answer" => "735184", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 2, 6, 9, 3, 7, 5 ], "answer" => "269375", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 5, 1, 4, 8, 3, 6 ], "answer" => "514836", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 9, 7, 2, 5, 4, 1 ], "answer" => "972541", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 3, 5, 8, 1, 6, 2 ], "answer" => "358162", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 6, 2, 7, 4, 9, 3 ], "answer" => "627493", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 1, 9, 3, 6, 2, 7 ], "answer" => "193627", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 8, 4, 1, 7, 5, 3 ], "answer" => "841753", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 5, 3, 6, 9, 1, 8 ], "answer" => "536918", "hint" => "最初の数字から順に入力" } },

  # ===== 記憶力 / hard（8桁）=====
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 3, 7, 1, 9, 4, 2, 8, 6 ], "answer" => "37194286", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 5, 2, 8, 4, 7, 1, 3, 9 ], "answer" => "52847139", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 9, 4, 6, 1, 3, 8, 5, 2 ], "answer" => "94613852", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 2, 8, 3, 7, 5, 9, 1, 4 ], "answer" => "28375914", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 6, 1, 9, 5, 2, 4, 7, 3 ], "answer" => "61952473", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 4, 7, 2, 8, 6, 3, 9, 1 ], "answer" => "47286391", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 8, 3, 5, 2, 9, 7, 4, 6 ], "answer" => "83529746", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 1, 6, 4, 9, 3, 5, 2, 8 ], "answer" => "16493528", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 7, 9, 1, 4, 8, 6, 3, 5 ], "answer" => "79148635", "hint" => "最初の数字から順に入力" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 3, 5, 7, 2, 6, 1, 9, 4 ], "answer" => "35726194", "hint" => "最初の数字から順に入力" } },

  # ===== 言葉パズル / easy =====
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "春の次の季節は？", "answer" => "夏", "choices" => [ "夏", "秋", "冬", "春" ], "hint" => "四季の順番を思い出そう" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "1週間は何日？", "answer" => "7", "choices" => [ "7", "5", "6", "8" ], "hint" => "月〜日まで数えてみよう" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "日本の首都は？", "answer" => "東京", "choices" => [ "東京", "大阪", "京都", "名古屋" ], "hint" => "国会議事堂がある都市" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "「犬」の鳴き声は？", "answer" => "わんわん", "choices" => [ "わんわん", "にゃんにゃん", "もーもー", "ぶーぶー" ], "hint" => "ワン！" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "1年は何ヶ月？", "answer" => "12", "choices" => [ "12", "10", "11", "13" ], "hint" => "1月から12月まで" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "「赤」「青」「黄」は何の三原色？", "answer" => "色の三原色", "choices" => [ "色の三原色", "光の三原色", "絵の三原色", "空の三原色" ], "hint" => "絵の具で混ぜる色" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "水が凍ると何になる？", "answer" => "氷", "choices" => [ "氷", "雪", "雨", "霧" ], "hint" => "冷凍庫に入れると…" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "「山」の反対語は？", "answer" => "海", "choices" => [ "海", "川", "空", "谷" ], "hint" => "泳げる場所" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "1日は何時間？", "answer" => "24", "choices" => [ "24", "12", "48", "36" ], "hint" => "昼12時間＋夜12時間" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "太陽が出ている時間帯は？", "answer" => "昼", "choices" => [ "昼", "夜", "深夜", "明け方" ], "hint" => "明るい時間帯" } },

  # ===== 言葉パズル / normal =====
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「春夏秋冬」の読み方は？", "answer" => "しゅんかしゅうとう", "choices" => [ "しゅんかしゅうとう", "はるなつあきふゆ", "しきのながれ", "よんきせつ" ], "hint" => "音読みで読む四字熟語" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「始」の反対の意味の漢字は？", "answer" => "終", "choices" => [ "終", "初", "末", "後" ], "hint" => "スタートとゴールの関係" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「一石二鳥」の意味は？", "answer" => "一つの行動で二つの利益を得ること", "choices" => [ "一つの行動で二つの利益を得ること", "石を二つ投げること", "鳥を一羽捕まえること", "一度に二回飛ぶこと" ], "hint" => "石を投げて何が起きる？" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「光陰矢の如し」の意味は？", "answer" => "時間が経つのは早い", "choices" => [ "時間が経つのは早い", "矢は光よりも速い", "影は光より遅い", "矢が光る様子" ], "hint" => "光陰＝月日、矢のように…" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「以心伝心」の意味は？", "answer" => "言葉なしに気持ちが通じ合うこと", "choices" => [ "言葉なしに気持ちが通じ合うこと", "心を手紙で伝えること", "以前の心に戻ること", "心を以て伝えること" ], "hint" => "テレパシーに近い四字熟語" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「急がば回れ」の意味は？", "answer" => "急ぐときほど安全な方法を取るべき", "choices" => [ "急ぐときほど安全な方法を取るべき", "急いで回り道をすること", "急いで走ること", "回り道は時間の無駄" ], "hint" => "近道が危険なことも…" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「百聞は一見に如かず」の意味は？", "answer" => "何度聞くより一度見る方がよくわかる", "choices" => [ "何度聞くより一度見る方がよくわかる", "百回見るより一度聞く方がよい", "聞くことは見ることより大切", "百人に聞けば一人は知っている" ], "hint" => "耳より目の方が…" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「七転び八起き」の意味は？", "answer" => "何度失敗してもくじけず立ち上がること", "choices" => [ "何度失敗してもくじけず立ち上がること", "七回転んで八回休むこと", "転び方が上手になること", "失敗を七回すること" ], "hint" => "転んだ数と起きた数の差は…" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「五十歩百歩」の意味は？", "answer" => "大差はないこと", "choices" => [ "大差はないこと", "五十歩進むより百歩進む方が良い", "五十と百は違う数", "歩数を数えること" ], "hint" => "どちらも逃げたことには変わりない" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「花鳥風月」の意味は？", "answer" => "自然の美しい風景・風流なこと", "choices" => [ "自然の美しい風景・風流なこと", "花と鳥と風と月の四つ", "季節の変化のこと", "鳥が花の中を飛ぶ様子" ], "hint" => "日本の美意識を表す言葉" } },

  # ===== 言葉パズル / hard =====
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「朱に交われば赤くなる」の意味は？", "answer" => "環境や交友関係によって人は変わる", "choices" => [ "環境や交友関係によって人は変わる", "赤い色は混ぜると朱になる", "良い友達を持つべきだ", "色は混ぜると変わる" ], "hint" => "朱（赤い色）の中にいると…" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「石の上にも三年」の意味は？", "answer" => "辛抱強く続ければ成功する", "choices" => [ "辛抱強く続ければ成功する", "石は三年で温かくなる", "三年間何もしないこと", "忍耐力がなくなること" ], "hint" => "冷たい石でも長く座れば…" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「温故知新」の意味は？", "answer" => "古いことを学んで新しい知識を得ること", "choices" => [ "古いことを学んで新しい知識を得ること", "昔の友人に再会すること", "温かい気持ちで新しいことを始める", "古いものより新しいものが良い" ], "hint" => "温＝たずねる、故＝ふるいこと" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「杞憂」の意味は？", "answer" => "取り越し苦労・無用な心配", "choices" => [ "取り越し苦労・無用な心配", "大きな喜び", "昔の記憶", "深い悲しみ" ], "hint" => "杞の人が天が落ちてくると心配した故事から" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「蛇足」の意味は？", "answer" => "余計なもの・なくてもいいもの", "choices" => [ "余計なもの・なくてもいいもの", "ヘビの足のこと", "大切な補足説明", "足が長いこと" ], "hint" => "絵に描いた蛇に足を描き加えたら…" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「矛盾」の語源は？", "answer" => "どんな盾も貫く矛とどんな矛も防ぐ盾の話", "choices" => [ "どんな盾も貫く矛とどんな矛も防ぐ盾の話", "戦いで矛と盾がぶつかること", "古代の武器の名前", "矛と盾で戦う兵士の話" ], "hint" => "「最強の矛」と「最強の盾」を売る商人の話" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「捲土重来」の読み方は？", "answer" => "けんどちょうらい", "choices" => [ "けんどちょうらい", "まきつちじゅうらい", "けんどじゅうらい", "まきどちょうらい" ], "hint" => "一度失敗してまた勢いを取り戻すこと" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「彼岸」とは何のこと？", "answer" => "春分・秋分の日を中日とする7日間", "choices" => [ "春分・秋分の日を中日とする7日間", "死後の世界のこと", "遠い国のこと", "川の向こう岸のこと" ], "hint" => "お墓参りをする時期" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「塞翁が馬」の意味は？", "answer" => "人生の禍福は予測できないこと", "choices" => [ "人生の禍福は予測できないこと", "老人が馬を大切にすること", "馬が城を守ること", "年寄りの知恵は正しい" ], "hint" => "良いことが悪いことになり、また良いことになる話" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「雨奇晴好」の意味は？", "answer" => "雨の日も晴れの日もそれぞれに趣がある", "choices" => [ "雨の日も晴れの日もそれぞれに趣がある", "雨は嫌いで晴れが好きなこと", "天気によって気分が変わること", "雨が降ると晴れになること" ], "hint" => "どんな天気も味わい深い" } }
]

questions.each do |attrs|
  next if Question.exists?(genre: attrs[:genre], difficulty: attrs[:difficulty], question_data: attrs[:question_data])
  Question.create!(attrs)
end

puts "Question pool: #{Question.count} questions"
