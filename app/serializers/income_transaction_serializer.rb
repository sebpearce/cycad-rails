class IncomeTransactionSerializer < ActiveModel::Serializer
  attributes :id, :date, :amt, :cat, :desc
  has_many :tags

  def cat
    object.income_category_id
  end

  def amt
    object.amount
  end

  def desc
    object.description
  end
end
