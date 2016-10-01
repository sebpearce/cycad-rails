class CreateExpenseTransactionToTags < ActiveRecord::Migration[5.0]
  def change
    create_table :expense_transaction_to_tags do |t|
      t.references :expense_transaction, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
