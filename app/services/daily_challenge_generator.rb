class DailyChallengeGenerator
  def self.call(date = Date.today)
    new(date).generate
  end

  def initialize(date)
    @date = date
  end

  def generate
    return if DailyChallenge.exists?(date: @date)

    genre = pick_genre
    daily = DailyChallenge.create!(date: @date, genre: genre)

    Quest.difficulties.each_key do |difficulty|
      Question.for_genre_and_difficulty(genre, difficulty).order("RANDOM()").limit(2).each do |question|
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

  private

  def pick_genre
    DailyChallenge::GENRES[@date.jd % DailyChallenge::GENRES.size]
  end
end
