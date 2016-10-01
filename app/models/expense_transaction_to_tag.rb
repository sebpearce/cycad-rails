class ExpenseTransactionToTag < ApplicationRecord
  belongs_to :expense_transaction
  belongs_to :tag
end
