class CreateExpenseTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :expense_transactions do |t|
      t.date :date
      t.decimal :amount, precision: 8, scale: 2
      t.text :description
      t.references :expense_category, foreign_key: true
    end
  end
end
