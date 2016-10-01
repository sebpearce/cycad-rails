class ExpenseTransaction < ApplicationRecord
  belongs_to :expense_category
  has_many :expense_transaction_to_tags
  has_many :tags, through: :expense_transaction_to_tags
end
