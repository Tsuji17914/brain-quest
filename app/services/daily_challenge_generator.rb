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
      question = Question.for_genre_and_difficulty(genre, difficulty).order("RANDOM()").first
      next unless question

      daily.quests.create!(
        question_data: question.question_data,
        difficulty: difficulty,
        exp_reward: Quest::EXP_REWARDS[difficulty.to_sym][:first],
        gold_reward: Quest::GOLD_REWARDS[difficulty.to_sym]
      )
    end

    daily
  end

  private

  def pick_genre
    DailyChallenge::GENRES[@date.jd % DailyChallenge::GENRES.size]
  end
end
