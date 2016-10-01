class ExpenseCategory < ApplicationRecord
  has_many :expense_transactions
end
