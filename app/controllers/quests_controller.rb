class QuestsController < ApplicationController
  before_action :authenticate_user!

  def index
    @daily_challenge = DailyChallenge.includes(:quests).find_by(date: Date.today)
    @quests = @daily_challenge&.quests&.order(:difficulty)
  end

  def show
    @quest = Quest.includes(:daily_challenge).find(params[:id])
    @already_cleared = current_user.attempts.exists?(quest: @quest, correct: true)
  end

  def reveal_hint
    @quest = Quest.find(params[:quest_id])
    if current_user.use_item!("hint_book")
      flash[:hint] = @quest.question_data["hint"]
    end
    redirect_to quest_path(@quest)
  end
end
