class IncomeCategory < ApplicationRecord
  has_many :income_transactions
  validates :name, presence: true, uniqueness: true
end
