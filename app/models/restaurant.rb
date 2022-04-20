class Restaurant < ApplicationRecord
  CATEGORY_LIST = %w[chinese italian japanese french belgian].freeze

  validates :category, inclusion: { in: CATEGORY_LIST }
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  has_many :reviews, dependent: :destroy
end
