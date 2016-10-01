class AddTagRefToExpenseTransactions < ActiveRecord::Migration[5.0]
  def change
    add_reference :expense_transactions, :tag, foreign_key: true
  end
end
