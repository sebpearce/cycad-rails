class ExpenseTransaction < ApplicationRecord
  belongs_to :expense_category
  has_many :expense_transaction_to_tags
  has_many :tags, through: :expense_transaction_to_tags
  validates :date, :amount, :expense_category_id, presence: true
end
