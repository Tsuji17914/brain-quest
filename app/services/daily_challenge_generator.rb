class DailyChallengeGenerator
  def self.call(genre, date = Date.today)
    new(genre, date).generate
  end

  def initialize(genre, date)
    @genre = genre
    @date  = date
  end

  def generate
    daily = DailyChallenge.find_or_initialize_by(date: @date, genre: @genre)
    return daily unless daily.new_record?

    daily.save!

    Quest.difficulties.each_key do |difficulty|
      Question.for_genre_and_difficulty(@genre, difficulty).order("RANDOM()").limit(2).each do |question|
        daily.quests.create!(
          question_data: question.question_data,
          difficulty: difficulty,
          exp_reward: Quest::EXP_REWARDS[difficulty.to_sym],
          gold_reward: Quest::GOLD_REWARDS[difficulty.to_sym]
        )
      end
    end

    daily
  end
end
