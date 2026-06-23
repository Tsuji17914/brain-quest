module QuestionGenerators
  class WordPuzzleGenerator
    QUESTIONS = {
      easy: [
        { question: "「りんご」をひらがなで書くと？", answer: "りんご", choices: %w[りんご みかん ぶどう ばなな] },
        { question: "「犬」の鳴き声は？", answer: "わんわん", choices: %w[わんわん にゃんにゃん もーもー ぶーぶー] },
        { question: "赤・青・黄の三原色のうち、空の色は？", answer: "青", choices: %w[青 赤 黄 緑] }
      ],
      normal: [
        { question: "「春夏秋冬」の読み方は？", answer: "しゅんかしゅうとう", choices: %w[しゅんかしゅうとう はるなつあきふゆ しきのながれ よんきせつ] },
        { question: "「山」の反対語は？", answer: "海", choices: %w[海 川 空 谷] },
        { question: "「始」の反対の意味の漢字は？", answer: "終", choices: %w[終 初 末 後] }
      ],
      hard: [
        { question: "「七転び八起き」の意味として正しいのは？", answer: "何度失敗してもくじけず立ち上がること", choices: [ "何度失敗してもくじけず立ち上がること", "七回転んで八回休むこと", "転び方が上手になること", "失敗を七回すること" ] },
        { question: "「石の上にも三年」の意味は？", answer: "辛抱強く続ければ成功する", choices: [ "辛抱強く続ければ成功する", "石は三年で温かくなる", "三年間何もしないこと", "忍耐力がなくなること" ] },
        { question: "「朱に交われば赤くなる」の意味は？", answer: "環境や交友関係によって人は変わる", choices: [ "環境や交友関係によって人は変わる", "赤い色は混ぜると朱になる", "良い友達を持つべきだ", "色は混ぜると変わる" ] }
      ]
    }.freeze

    def self.call(difficulty)
      new(difficulty).generate
    end

    def initialize(difficulty)
      @difficulty = difficulty.to_sym
    end

    def generate
      q = QUESTIONS[@difficulty].sample
      {
        "question" => q[:question],
        "answer" => q[:answer],
        "choices" => q[:choices].shuffle,
        "hint" => "選択肢をよく読んでみよう"
      }
    end
  end
end
