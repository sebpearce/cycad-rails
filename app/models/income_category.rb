class IncomeCategory < ApplicationRecord
  has_many :income_transactions
end
