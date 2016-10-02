class ExpenseTransactionToTag < ApplicationRecord
  belongs_to :expense_transaction
  belongs_to :tag
  validates :expense_transaction_id, :tag_id, presence: true
end
