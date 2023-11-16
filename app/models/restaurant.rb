class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # pour que les reviews soient détruites quand on détruit un restaurant
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }
end
