class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :attempts, dependent: :destroy
  has_many :user_items, dependent: :destroy
  has_many :items, through: :user_items

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
      if use_item!("holy_water")
        # 聖水でストリーク保護：リセットせず継続
      else
        update!(streak: 1)
      end
    end
    update!(last_played_date: date)
  end

  def active_item?(effect)
    user_items.unused.joins(:item).exists?(items: { effect: effect })
  end

  def use_item!(effect)
    user_item = user_items.unused.joins(:item).find_by(items: { effect: effect })
    return false unless user_item

    user_item.use!
    true
  end

  def can_afford?(item)
    gold >= item.price
  end

  def purchase!(item)
    return false unless can_afford?(item)

    transaction do
      decrement!(:gold, item.price)
      user_items.create!(item: item)
    end
    true
  end
end
