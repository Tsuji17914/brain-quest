generators = {
  "calculation" => QuestionGenerators::CalculationGenerator,
  "memory"      => QuestionGenerators::MemoryGenerator,
  "word_puzzle" => QuestionGenerators::WordPuzzleGenerator
}

DailyChallenge::GENRES.each_with_index do |genre, i|
  daily = DailyChallenge.find_or_create_by!(date: Date.today + i) do |d|
    d.genre = genre
  end

  generator = generators[genre]

  Quest.difficulties.each_key do |difficulty|
    daily.quests.find_or_create_by!(difficulty: difficulty) do |q|
      q.question_data = generator.call(difficulty)
      q.exp_reward    = Quest::EXP_REWARDS[difficulty.to_sym][:first]
      q.gold_reward   = Quest::GOLD_REWARDS[difficulty.to_sym]
    end
  end

  puts "Seeded DailyChallenge(#{genre}) with #{daily.quests.count} quests"
end
