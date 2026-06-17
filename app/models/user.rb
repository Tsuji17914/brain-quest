class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :attempts, dependent: :destroy

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
end
