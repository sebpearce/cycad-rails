class IncomeTransactionToTag < ApplicationRecord
  belongs_to :income_transaction
  belongs_to :tag
  validates :income_transaction_id, :tag_id, presence: true
end
