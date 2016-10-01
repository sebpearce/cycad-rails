class ExpenseTransactionSerializer < ActiveModel::Serializer
  attributes :id, :date, :amt, :cat, :desc
  has_many :tags

  def cat
    object.expense_category_id
  end

  def amt
    object.amount
  end

  def desc
    object.description
  end
end
