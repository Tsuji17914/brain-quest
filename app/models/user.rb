class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :attempts, dependent: :destroy

  MAX_LEVEL = 99

  TITLES = [
    { min_level: 1,  title: "見習い冒険者" },
    { min_level: 5,  title: "駆け出し冒険者" },
    { min_level: 15, title: "一人前の冒険者" },
    { min_level: 30, title: "熟練冒険者" },
    { min_level: 50, title: "上級冒険者" },
    { min_level: 75, title: "英雄" },
    { min_level: 99, title: "伝説の賢者" }
  ].freeze

  def current_title
    TITLES.reverse.find { |t| level >= t[:min_level] }[:title]
  end

  # レベルアップに必要な累計 EXP（Lv1=0, Lv2=100, Lv3=300, ...）
  def self.exp_required_for_level(lv)
    lv <= 1 ? 0 : 100 * (lv - 1) * lv / 2
  end

  def exp_to_next_level
    return 0 if level >= MAX_LEVEL

    self.class.exp_required_for_level(level + 1) - exp
  end

  def level_up_if_needed!
    return if level >= MAX_LEVEL

    while level < MAX_LEVEL && exp >= self.class.exp_required_for_level(level + 1)
      increment!(:level)
    end
  end

  def update_streak!(date = Date.today)
    if last_played_date == date - 1
      increment!(:streak)
    elsif last_played_date != date
      update!(streak: 1)
    end
    update!(last_played_date: date)
  end
end
