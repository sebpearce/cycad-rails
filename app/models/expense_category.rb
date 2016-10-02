class ExpenseCategory < ApplicationRecord
  has_many :expense_transactions
  validates :name, presence: true, uniqueness: true
end
