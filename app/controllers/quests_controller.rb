class QuestsController < ApplicationController
  before_action :authenticate_user!

  VALID_GENRES = DailyChallenge::GENRES

  def index
    @selected_genre = params[:genre].presence
    if @selected_genre && VALID_GENRES.include?(@selected_genre)
      @daily_challenge = DailyChallengeGenerator.call(@selected_genre)
      @quests = @daily_challenge.quests.order(:difficulty)
    end
    @rewarded_difficulties = rewarded_difficulties_today
  end

  def show
    @quest = Quest.includes(:daily_challenge).find(params[:id])
    @already_cleared = current_user.attempts.exists?(quest: @quest, correct: true)
    @difficulty_rewarded_today = difficulty_rewarded_today?(@quest.difficulty)
  end

  def reveal_hint
    @quest = Quest.find(params[:id])
    if current_user.use_item!("hint_book")
      flash[:hint] = @quest.question_data["hint"]
    end
    redirect_to quest_path(@quest)
  end

  private

  def rewarded_difficulties_today
    Quest.difficulties.keys.select { |d| difficulty_rewarded_today?(d) }.to_set
  end

  def difficulty_rewarded_today?(difficulty)
    today_quest_ids = DailyChallenge.where(date: Date.today)
                                    .joins(:quests)
                                    .where(quests: { difficulty: Quest.difficulties[difficulty] })
                                    .pluck("quests.id")
    current_user.attempts.where(quest_id: today_quest_ids, correct: true).where("earned_exp > 0").exists?
  end
end
