class AddTagRefToIncomeTransactions < ActiveRecord::Migration[5.0]
  def change
    add_reference :income_transactions, :tag, foreign_key: true
  end
end
