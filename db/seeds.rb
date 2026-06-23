Question.destroy_all
DailyChallenge.destroy_all

questions = [
  # ===== 計算 / easy（2桁×2桁 複合計算）=====
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "25 × 16 - 48 = ?",   "answer" => "352",  "hint" => "25×16 は 25×4×4 = 100×4 = 400" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "18 × 19 - 42 = ?",   "answer" => "300",  "hint" => "18×19 = 18×20 - 18 = 360 - 18" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "32 × 15 - 65 = ?",   "answer" => "415",  "hint" => "32×15 = 32×10 + 32×5" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "27 × 13 - 71 = ?",   "answer" => "280",  "hint" => "27×13 = 27×10 + 27×3" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "44 × 12 - 58 = ?",   "answer" => "470",  "hint" => "44×12 = 44×10 + 44×2" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "21 × 24 - 84 = ?",   "answer" => "420",  "hint" => "21×24 = 21×20 + 21×4" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "36 × 11 - 46 = ?",   "answer" => "350",  "hint" => "×11 は元の数をずらして足すと楽" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "29 × 17 - 93 = ?",   "answer" => "400",  "hint" => "29×17 = 30×17 - 17 = 510 - 17" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "14 × 23 - 52 = ?",   "answer" => "270",  "hint" => "14×23 = 14×20 + 14×3" } },
  { genre: "calculation", difficulty: :easy, question_data: { "question" => "38 × 14 - 72 = ?",   "answer" => "460",  "hint" => "38×14 = 38×10 + 38×4" } },

  # ===== 計算 / normal（3桁以上・多段計算）=====
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "47 × 23 - 81 = ?",   "answer" => "1000", "hint" => "47×23 = 47×20 + 47×3" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "25 × 36 - 124 = ?",  "answer" => "776",  "hint" => "25×36 = 25×4 × 9 = 100×9" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "63 × 15 - 148 = ?",  "answer" => "797",  "hint" => "63×15 = 63×10 + 63×5" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "144 ÷ 12 × 13 = ?",  "answer" => "156",  "hint" => "まず 144÷12 を計算しよう" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "37 × 28 - 136 = ?",  "answer" => "900",  "hint" => "37×28 = 37×30 - 37×2" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "56 × 17 - 232 = ?",  "answer" => "720",  "hint" => "56×17 = 56×10 + 56×7" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "18 × 35 + 64 = ?",   "answer" => "694",  "hint" => "18×35 = 18×30 + 18×5" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "76 × 25 - 225 = ?",  "answer" => "1675", "hint" => "76×25 = 76×100÷4" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "48 × 19 - 162 = ?",  "answer" => "750",  "hint" => "48×19 = 48×20 - 48" } },
  { genre: "calculation", difficulty: :normal, question_data: { "question" => "33 × 34 - 122 = ?",  "answer" => "1000", "hint" => "33×34 = 33×30 + 33×4" } },

  # ===== 計算 / hard（高難度・差の積・多段）=====
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "97 × 103 = ?",          "answer" => "9991", "hint" => "(100-3)(100+3) = 100² - 3²" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "38 × 42 - 96 = ?",      "answer" => "1500", "hint" => "(40-2)(40+2) = 40² - 4" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "63 × 47 - 261 = ?",     "answer" => "2700", "hint" => "63×47 = 63×50 - 63×3" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "75 × 36 ÷ 9 + 125 = ?", "answer" => "425",  "hint" => "75×36÷9 → 75×4 = 300" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "84 × 15 - 225 = ?",     "answer" => "1035", "hint" => "84×15 = 84×10 + 84×5" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "56 × 37 + 72 = ?",      "answer" => "2144", "hint" => "56×37 = 56×40 - 56×3" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "92 × 25 - 175 = ?",     "answer" => "2125", "hint" => "92×25 = 92×100÷4" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "48 × 52 - 96 = ?",      "answer" => "2400", "hint" => "(50-2)(50+2) = 50² - 4" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "25 × 76 - 150 = ?",     "answer" => "1750", "hint" => "25×76 = 25×4×19 = 100×19" } },
  { genre: "calculation", difficulty: :hard, question_data: { "question" => "67 × 34 - 128 = ?",     "answer" => "2150", "hint" => "67×34 = 67×30 + 67×4" } },

  # ===== 記憶力 / easy（8桁）=====
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 4, 2, 8, 6, 1, 5, 9, 3 ], "answer" => "42861593", "hint" => "前半4桁と後半4桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 7, 1, 5, 3, 9, 4, 2, 8 ], "answer" => "71539428", "hint" => "前半4桁と後半4桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 3, 6, 2, 9, 5, 7, 1, 4 ], "answer" => "36295714", "hint" => "前半4桁と後半4桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 8, 4, 7, 1, 6, 3, 9, 2 ], "answer" => "84716392", "hint" => "前半4桁と後半4桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 5, 9, 3, 7, 2, 8, 4, 6 ], "answer" => "59372846", "hint" => "前半4桁と後半4桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 2, 7, 4, 8, 3, 6, 1, 9 ], "answer" => "27483619", "hint" => "前半4桁と後半4桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 9, 3, 6, 4, 8, 2, 7, 5 ], "answer" => "93648275", "hint" => "前半4桁と後半4桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 1, 5, 9, 2, 7, 4, 6, 8 ], "answer" => "15927468", "hint" => "前半4桁と後半4桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 6, 8, 1, 5, 4, 9, 3, 7 ], "answer" => "68154937", "hint" => "前半4桁と後半4桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :easy, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 4, 9, 2, 6, 8, 1, 5, 3 ], "answer" => "49268153", "hint" => "前半4桁と後半4桁に分けて覚えよう" } },

  # ===== 記憶力 / normal（10桁）=====
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 5, 2, 8, 1, 6, 3, 9, 7, 4, 2 ], "answer" => "5281639742", "hint" => "前半5桁と後半5桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 3, 7, 4, 9, 1, 6, 2, 8, 5, 3 ], "answer" => "3749162853", "hint" => "前半5桁と後半5桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 9, 1, 5, 7, 3, 4, 8, 2, 6, 9 ], "answer" => "9157348269", "hint" => "前半5桁と後半5桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 2, 6, 8, 3, 7, 1, 5, 4, 9, 1 ], "answer" => "2683715491", "hint" => "前半5桁と後半5桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 7, 4, 2, 6, 9, 5, 3, 1, 8, 4 ], "answer" => "7426953184", "hint" => "前半5桁と後半5桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 1, 8, 3, 5, 2, 7, 9, 6, 4, 7 ], "answer" => "1835279647", "hint" => "前半5桁と後半5桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 6, 3, 9, 2, 5, 8, 1, 7, 3, 5 ], "answer" => "6392581735", "hint" => "前半5桁と後半5桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 4, 9, 1, 7, 6, 2, 8, 3, 5, 8 ], "answer" => "4917628358", "hint" => "前半5桁と後半5桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 8, 5, 7, 4, 1, 3, 6, 9, 2, 6 ], "answer" => "8574136926", "hint" => "前半5桁と後半5桁に分けて覚えよう" } },
  { genre: "memory", difficulty: :normal, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 2, 4, 6, 8, 3, 5, 7, 9, 1, 4 ], "answer" => "2468357914", "hint" => "前半5桁と後半5桁に分けて覚えよう" } },

  # ===== 記憶力 / hard（12桁）=====
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 7, 2, 5, 9, 3, 1, 8, 4, 6, 7, 2, 9 ], "answer" => "725931846729", "hint" => "4桁ずつ3グループに分けて覚えよう" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 4, 8, 1, 6, 3, 7, 2, 9, 5, 4, 8, 3 ], "answer" => "481637295483", "hint" => "4桁ずつ3グループに分けて覚えよう" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 9, 3, 7, 2, 5, 8, 1, 4, 6, 9, 3, 5 ], "answer" => "937258146935", "hint" => "4桁ずつ3グループに分けて覚えよう" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 1, 5, 8, 4, 7, 3, 6, 2, 9, 1, 5, 6 ], "answer" => "158473629156", "hint" => "4桁ずつ3グループに分けて覚えよう" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 6, 2, 9, 5, 1, 4, 7, 3, 8, 6, 2, 7 ], "answer" => "629514738627", "hint" => "4桁ずつ3グループに分けて覚えよう" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 3, 7, 4, 8, 2, 6, 9, 5, 1, 3, 7, 4 ], "answer" => "374826951374", "hint" => "4桁ずつ3グループに分けて覚えよう" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 8, 1, 6, 3, 9, 5, 2, 7, 4, 8, 1, 9 ], "answer" => "816395274819", "hint" => "4桁ずつ3グループに分けて覚えよう" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 5, 4, 2, 7, 8, 1, 3, 6, 9, 5, 4, 2 ], "answer" => "542781369542", "hint" => "4桁ずつ3グループに分けて覚えよう" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 2, 9, 3, 6, 4, 7, 5, 1, 8, 2, 9, 6 ], "answer" => "293647518296", "hint" => "4桁ずつ3グループに分けて覚えよう" } },
  { genre: "memory", difficulty: :hard, question_data: { "question" => "次の数列を覚えてください", "sequence" => [ 4, 6, 8, 2, 5, 9, 3, 7, 1, 4, 6, 3 ], "answer" => "468259371463", "hint" => "4桁ずつ3グループに分けて覚えよう" } },

  # ===== 言葉パズル / easy（四字熟語・ことわざ 中級）=====
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "「僥倖」の意味は？", "answer" => "思いがけない幸運", "choices" => [ "思いがけない幸運", "努力による成功", "長い苦労の末の報い", "避けられない不幸" ], "hint" => "僥（たまたま）倖（さいわい）" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "「齟齬」の意味は？", "answer" => "食い違い・かみ合わないこと", "choices" => [ "食い違い・かみ合わないこと", "うまく進むこと", "意見が一致すること", "話し合いを重ねること" ], "hint" => "歯車がかみ合わないイメージ" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "「登竜門」の意味は？", "answer" => "成功・出世のための難関", "choices" => [ "成功・出世のための難関", "龍が住む門", "お寺の入り口", "試験に落ちること" ], "hint" => "鯉が龍になるために越える滝の話から" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "「青天の霹靂」の意味は？", "answer" => "突然の出来事・予期せぬ驚き", "choices" => [ "突然の出来事・予期せぬ驚き", "うれしいニュース", "梅雨が明けること", "天気が急変すること" ], "hint" => "青い空に突然雷が落ちる" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "「因果応報」の意味は？", "answer" => "よい行いにはよい報い、悪い行いには悪い報いがある", "choices" => [ "よい行いにはよい報い、悪い行いには悪い報いがある", "原因があれば必ず結果がある", "努力は必ず報われる", "善人は長生きする" ], "hint" => "善因善果・悪因悪果という仏教の考え" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "「一期一会」の意味は？", "answer" => "一生に一度の出会いを大切にする心がけ", "choices" => [ "一生に一度の出会いを大切にする心がけ", "一人で一つのことに集中すること", "一回で成功すること", "一度だけ会うこと" ], "hint" => "茶道の精神から生まれた言葉" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "「起死回生」の意味は？", "answer" => "絶望的な状況を立て直すこと", "choices" => [ "絶望的な状況を立て直すこと", "死ぬ前に回復すること", "死から生き返ること", "死にそうになること" ], "hint" => "瀕死の状態から生き返らせる＝大逆転" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "「付和雷同」の意味は？", "answer" => "自分の考えなく他人の意見に従うこと", "choices" => [ "自分の考えなく他人の意見に従うこと", "皆で協力すること", "強い意見を持つこと", "一緒に喜ぶこと" ], "hint" => "雷の音に合わせるだけ＝主体性がない" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "「大器晩成」の意味は？", "answer" => "大人物は時間をかけて大成する", "choices" => [ "大人物は時間をかけて大成する", "大きな器は重い", "晩年に器を作ること", "急いで成長すること" ], "hint" => "大きなものほど完成に時間がかかる" } },
  { genre: "word_puzzle", difficulty: :easy, question_data: { "question" => "「画竜点睛」の意味は？", "answer" => "最後の仕上げで完成させること", "choices" => [ "最後の仕上げで完成させること", "竜の絵を描くこと", "目が最も大事なこと", "細部にこだわりすぎること" ], "hint" => "絵の龍に瞳を入れたら飛び去った故事から" } },

  # ===== 言葉パズル / normal（難読・難解ことわざ）=====
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「鶏口牛後」の意味は？", "answer" => "大組織の末端より小組織のトップのほうがよい", "choices" => [ "大組織の末端より小組織のトップのほうがよい", "鶏と牛は仲が悪い", "後ろを振り返ることが大切", "小さな成功より大きな挑戦がよい" ], "hint" => "鶏の口＝先頭、牛の後＝最後尾" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「呉越同舟」の意味は？", "answer" => "仲の悪い者どうしが同じ場所に居合わせること", "choices" => [ "仲の悪い者どうしが同じ場所に居合わせること", "仲よく同じ船に乗ること", "敵に囲まれること", "遠い旅に出ること" ], "hint" => "呉と越は古代中国の敵対する国" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「忖度」の意味は？", "answer" => "相手の気持ちや意図を推し量ること", "choices" => [ "相手の気持ちや意図を推し量ること", "命令に従うこと", "意見を発表すること", "批判すること" ], "hint" => "忖も度も「はかる」という意味" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「破顔一笑」の意味は？", "answer" => "顔をほころばせてにっこり笑うこと", "choices" => [ "顔をほころばせてにっこり笑うこと", "大声で笑うこと", "顔が割れるほど驚くこと", "笑いを一度だけ見せること" ], "hint" => "破顔＝顔がほぐれる、一笑＝ひと笑い" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「漸進」の読み方と意味は？", "answer" => "ぜんしん・少しずつ進むこと", "choices" => [ "ぜんしん・少しずつ進むこと", "ぜんしん・全力で進むこと", "かいしん・前に進むこと", "さくしん・後ろに下がること" ], "hint" => "漸（ようやく・しだいに）進む" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「焦眉の急」の意味は？", "answer" => "非常に差し迫った危機", "choices" => [ "非常に差し迫った危機", "眉を焦がすほど怒ること", "急いで走ること", "顔が熱くなること" ], "hint" => "眉毛に火がついた緊急事態" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「沈魚落雁」の意味は？", "answer" => "非常に美しい女性のたとえ", "choices" => [ "非常に美しい女性のたとえ", "魚や鳥が静かな様子", "海と空が穏やかなこと", "釣りが上手なこと" ], "hint" => "美しさに魚が沈み、雁が落ちるほど" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「羊頭狗肉」の意味は？", "answer" => "見た目と中身が違うこと・看板に偽りがあること", "choices" => [ "見た目と中身が違うこと・看板に偽りがあること", "羊と犬が仲良くすること", "肉の種類を区別すること", "良い看板を出すこと" ], "hint" => "羊の頭を看板にして犬の肉を売る" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「嚆矢」の読み方と意味は？", "answer" => "こうし・物事のはじまり", "choices" => [ "こうし・物事のはじまり", "ものさし・長さを測るもの", "かぶらや・戦場の武器", "こうや・広大な野原" ], "hint" => "戦いの合図に放たれた音の出る矢が最初だったことから" } },
  { genre: "word_puzzle", difficulty: :normal, question_data: { "question" => "「阿鼻叫喚」の意味は？", "answer" => "地獄のように悲惨で混乱した状況", "choices" => [ "地獄のように悲惨で混乱した状況", "とても楽しい様子", "大声で叫ぶこと", "苦しい訓練のこと" ], "hint" => "仏教の阿鼻地獄・叫喚地獄から" } },

  # ===== 言葉パズル / hard（難解・古語・難読漢字）=====
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「不倶戴天」の意味は？", "answer" => "絶対に共存できない深い恨み", "choices" => [ "絶対に共存できない深い恨み", "共に天を目指すこと", "同じ空の下に生きること", "天を仰いで祈ること" ], "hint" => "「ともに天を戴かず」＝同じ天の下に共存できない仇敵" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「桑田碧海」の意味は？", "answer" => "世の中が大きく変化すること", "choices" => [ "世の中が大きく変化すること", "桑畑が広がる美しい景色", "海が澄んでいること", "農業が盛んなこと" ], "hint" => "海が桑畑に変わるほどの変化。蒼海変じて桑田と為る" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「杜撰」の読み方は？", "answer" => "ずさん", "choices" => [ "ずさん", "とさん", "もりさん", "しゃさん" ], "hint" => "いい加減・粗雑なことを表す言葉" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「逡巡」の意味は？", "answer" => "ためらい・ぐずぐずすること", "choices" => [ "ためらい・ぐずぐずすること", "素早く行動すること", "慎重に考えること", "後悔すること" ], "hint" => "決断できずに行きつ戻りつする様子" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「髀肉の嘆」の意味は？", "answer" => "才能を発揮する機会がなく嘆くこと", "choices" => [ "才能を発揮する機会がなく嘆くこと", "太ももに傷を負うこと", "肉が食べられないこと", "老いて体が衰えること" ], "hint" => "馬に乗らないと太もも（髀）に肉がつく＝活躍できない嘆き" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「曲学阿世」の意味は？", "answer" => "真理を曲げて世俗に媚びること", "choices" => [ "真理を曲げて世俗に媚びること", "学問を曲解すること", "世界を曲げて学ぶこと", "権力に反抗すること" ], "hint" => "曲＝曲げる、阿＝おもねる（へつらう）" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「糟糠の妻」の意味は？", "answer" => "貧しい時代から苦労を共にした妻", "choices" => [ "貧しい時代から苦労を共にした妻", "酒が好きな妻", "料理が上手な妻", "長年連れ添った高齢の妻" ], "hint" => "糟糠（かすとぬか）＝粗末な食事を共にした" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「蹉跌」の読み方は？", "answer" => "さてつ", "choices" => [ "さてつ", "しゃてつ", "そてつ", "ざてき" ], "hint" => "つまずき・失敗のこと" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「鼎の軽重を問う」の意味は？", "answer" => "権力者の実力や権威を疑うこと", "choices" => [ "権力者の実力や権威を疑うこと", "鍋の重さを測ること", "重要なことを質問すること", "三人で話し合うこと" ], "hint" => "鼎（かなえ）は権力の象徴。その重さを問う＝権威への挑戦" } },
  { genre: "word_puzzle", difficulty: :hard, question_data: { "question" => "「牛刀をもって鶏を割く」の意味は？", "answer" => "小さなことに大げさな手段を使うこと", "choices" => [ "小さなことに大げさな手段を使うこと", "大きなナイフで牛を切ること", "鶏を丁寧に調理すること", "手間をかけて良いものを作ること" ], "hint" => "牛を切る大きなナイフで鶏を切る必要はない" } }
]

questions.each do |attrs|
  Question.create!(attrs)
end

puts "Question pool: #{Question.count} questions"

items = [
  { name: "聖水",    description: "ストリークが途切れそうなとき、1回だけ守ってくれる",    price: 50,  effect: "holy_water" },
  { name: "賢者の石", description: "次のクエストで獲得できる EXP が2倍になる",             price: 80,  effect: "sage_stone" },
  { name: "ヒント書", description: "問題のヒントを見ることができる（1回限り）",             price: 15,  effect: "hint_book" }
]

items.each do |attrs|
  Item.find_or_create_by!(effect: attrs[:effect]) do |item|
    item.name        = attrs[:name]
    item.description = attrs[:description]
    item.price       = attrs[:price]
  end
end

puts "Items: #{Item.count} items"
