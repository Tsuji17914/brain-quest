class AttemptsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_quest

  def create
    first = current_user.attempts.where(quest: @quest, correct: true).none?
    correct = params[:answer].to_s.strip == @quest.question_data["answer"].to_s

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
end
