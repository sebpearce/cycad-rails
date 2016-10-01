class RemoveTagFromTransactionsTables < ActiveRecord::Migration[5.0]
  def change
    remove_column :expense_transactions, :tag_id
    remove_column :income_transactions, :tag_id
  end
end
