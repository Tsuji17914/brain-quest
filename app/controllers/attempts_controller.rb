class AttemptsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_quest

  def create
    first   = current_user.attempts.where(quest: @quest, correct: true).none?
    correct = normalize_answer(params[:answer]) == normalize_answer(@quest.question_data["answer"])

    reward_eligible = correct && first && !difficulty_rewarded_today?(@quest.difficulty)

    base_exp    = reward_eligible ? Quest::EXP_REWARDS[@quest.difficulty.to_sym] : 0
    sage_active = base_exp > 0 && current_user.active_item?("sage_stone")
    earned_exp  = sage_active ? base_exp * 2 : base_exp
    earned_gold = reward_eligible ? Quest::GOLD_REWARDS[@quest.difficulty.to_sym] : 0

    @attempt = current_user.attempts.create!(
      quest: @quest,
      answer: params[:answer].to_s.strip,
      correct: correct,
      first_attempt: first,
      earned_exp: earned_exp,
      earned_gold: earned_gold
    )

    if correct
      current_user.use_item!("sage_stone") if sage_active
      current_user.increment!(:exp, earned_exp)
      current_user.increment!(:gold, earned_gold)
      current_user.level_up_if_needed!
      current_user.update_streak!
    end

    redirect_to quest_attempt_path(@quest, @attempt)
  end

  def show
    @attempt = current_user.attempts.find(params[:id])
  end

  private

  def set_quest
    @quest = Quest.find(params[:quest_id])
  end

  def difficulty_rewarded_today?(difficulty)
    today_quest_ids = DailyChallenge.where(date: Date.today)
                                    .joins(:quests)
                                    .where(quests: { difficulty: Quest.difficulties[difficulty] })
                                    .pluck("quests.id")
    current_user.attempts.where(quest_id: today_quest_ids, correct: true).where("earned_exp > 0").exists?
  end

  def normalize_answer(value)
    value.to_s
         .unicode_normalize(:nfkc)
         .gsub(/[[:space:]]/, "")
         .strip
  end
end
