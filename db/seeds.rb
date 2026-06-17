daily = DailyChallenge.find_or_create_by!(date: Date.today) do |d|
  d.genre = "calculation"
end

quests = [
  {
    difficulty: :easy,
    question_data: { question: "12 + 34 = ?", answer: "46", hint: "一の位から足してみよう" },
    exp_reward: Quest::EXP_REWARDS[:easy][:first],
    gold_reward: Quest::GOLD_REWARDS[:easy]
  },
  {
    difficulty: :normal,
    question_data: { question: "56 × 7 = ?", answer: "392", hint: "50×7 と 6×7 に分けると楽" },
    exp_reward: Quest::EXP_REWARDS[:normal][:first],
    gold_reward: Quest::GOLD_REWARDS[:normal]
  },
  {
    difficulty: :hard,
    question_data: { question: "123 × 45 - 678 = ?", answer: "4857", hint: "123×45 を先に計算しよう" },
    exp_reward: Quest::EXP_REWARDS[:hard][:first],
    gold_reward: Quest::GOLD_REWARDS[:hard]
  }
]

quests.each do |attrs|
  daily.quests.find_or_create_by!(difficulty: attrs[:difficulty]) do |q|
    q.question_data = attrs[:question_data]
    q.exp_reward    = attrs[:exp_reward]
    q.gold_reward   = attrs[:gold_reward]
  end
end

puts "Seeded DailyChallenge(#{daily.genre}) with #{daily.quests.count} quests"
