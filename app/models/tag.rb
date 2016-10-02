class Tag < ApplicationRecord
  has_many :income_transaction_to_tags
  has_many :expense_transaction_to_tags
  has_many :income_transactions, through: :income_transaction_to_tags
  has_many :expense_transactions, through: :expense_transaction_to_tags
  validates :name, presence: true, uniqueness: true
end
