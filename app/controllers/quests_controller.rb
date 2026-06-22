class QuestsController < ApplicationController
  before_action :authenticate_user!

  def index
    @daily_challenge = DailyChallenge.includes(:quests).find_by(date: Date.today)
    @quests = @daily_challenge&.quests&.order(:difficulty)
  end

  def show
    @quest = Quest.includes(:daily_challenge).find(params[:id])
  end
end
