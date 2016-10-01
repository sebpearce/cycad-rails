class CreateIncomeTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :income_transactions do |t|
      t.date :date
      t.decimal :amount, precision: 8, scale: 2
      t.text :description
      t.references :income_category, foreign_key: true
    end
  end
end
