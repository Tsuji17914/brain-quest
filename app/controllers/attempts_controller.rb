class AttemptsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_quest

  def create
    first = current_user.attempts.where(quest: @quest, correct: true).none?
    correct = normalize_answer(params[:answer]) == normalize_answer(@quest.question_data["answer"])

    earned_exp  = correct ? (first ? Quest::EXP_REWARDS[@quest.difficulty.to_sym][:first] : Quest::EXP_REWARDS[@quest.difficulty.to_sym][:repeat]) : 0
    earned_gold = correct ? Quest::GOLD_REWARDS[@quest.difficulty.to_sym] : 0

    @attempt = current_user.attempts.create!(
      quest: @quest,
      answer: params[:answer].to_s.strip,
      correct: correct,
      first_attempt: first,
      earned_exp: earned_exp,
      earned_gold: earned_gold
    )

    if correct
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

  def normalize_answer(value)
    value.to_s
         .unicode_normalize(:nfkc)  # 全角→半角
         .gsub(/[[:space:]]/, "")   # スペース除去
         .strip
  end
end
