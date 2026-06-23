class ProfileController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @recent_attempts = current_user.attempts
                                   .includes(quest: :daily_challenge)
                                   .order(created_at: :desc)
                                   .limit(10)
  end
end
