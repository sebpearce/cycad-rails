class CreateIncomeTransactionToTags < ActiveRecord::Migration[5.0]
  def change
    create_table :income_transaction_to_tags do |t|
      t.references :income_transaction, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
