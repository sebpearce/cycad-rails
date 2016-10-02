class IncomeTransaction < ApplicationRecord
  belongs_to :income_category
  has_many :income_transaction_to_tags
  has_many :tags, through: :income_transaction_to_tags
  validates :date, :amount, :income_category_id, presence: true
end
