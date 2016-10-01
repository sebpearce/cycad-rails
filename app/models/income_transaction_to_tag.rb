class IncomeTransactionToTag < ApplicationRecord
  belongs_to :income_transaction
  belongs_to :tag
end
