class IncomeTransaction < ApplicationRecord
  belongs_to :income_category
  has_many :income_transaction_to_tags
  has_many :tags, through: :income_transaction_to_tags
end
