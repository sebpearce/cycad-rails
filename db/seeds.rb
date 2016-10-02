# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
@expense_categories = %w(Rent Gas Water Electricity Internet Phone Transport Groceries Restaurants Clothes Haircuts Leisure Gym Petrol Media Equipment Gifts Medical Donations One-offs Other).map do |expense_category|
  ExpenseCategory.create(name: expense_category)
end
p "Created #{ExpenseCategory.count} expense categories."

@expense_transactions = [
  [Date.current - 10.days, 32.05, @expense_categories.sample, 'Paid for friend'],
  [Date.current - 9.days, 12.00, @expense_categories.sample],
  [Date.current - 8.days, 20.0, @expense_categories.sample],
  [Date.current - 7.days, 24.00, @expense_categories.sample],
  [Date.current - 6.days, 12.00, @expense_categories.sample],
  [Date.current - 3.days, 25.0, @expense_categories.sample],
  [Date.current - 5.days, 47.0, @expense_categories.sample, 'Good times'],
  [Date.current - 2.days, 40.9, @expense_categories.sample],
  [Date.current - 1.days, 50.0, @expense_categories.sample],
  [Date.current - 21.days, 55.0, @expense_categories.sample],
  [Date.current - 15.days, 10.52, @expense_categories.sample],
  [Date.current - 12.days, 90.5, @expense_categories.sample],
  [Date.current - 9.days, 39.9, @expense_categories.sample],
].map do |date, amount, category, desc|
  ExpenseTransaction.create(date: date, amount: amount, expense_category_id: category.id, description: desc)
end
p "Created #{ExpenseTransaction.count} expense transactions."

# Income Categorys

@income_categories = [
  'Job',
  'Partner\'s job',
  'Gifts',
  'Tax return',
  'Other',
].map do |income_category|
  IncomeCategory.create(name: income_category)
end
p "Created #{IncomeCategory.count} income categories."

# Income Transactions

@income_transactions = [
  [Date.current - 30.days, 1000.00, @income_categories.sample],
  [Date.current - 17.days, 4000.00, @income_categories.sample, 'Double time'],
  [Date.current - 2.days, 500.00, @income_categories.sample],
].map do |date, amount, category, desc|
  IncomeTransaction.create(date: date, amount: amount, income_category_id: category.id, description: desc)
end
p "Created #{IncomeTransaction.count} income transactions."

@tags = %w(Celery Potatoes Lettuce Onion Fennel).map do |name|
  Tag.create(name: name)
end
p "Created #{Tag.count} tags."

@expense_transaction_to_tags = [
  [1, 1],
  [2, 1],
  [3, 2],
].map do |expense_transaction_id, tag_id|
  ExpenseTransactionToTag.create(expense_transaction_id: expense_transaction_id, tag_id: tag_id)
end
p "Created #{ExpenseTransactionToTag.count} tags on expense transactions."

@income_transaction_to_tags = [
  [1, 1],
  [2, 1],
  [3, 2],
].map do |income_transaction_id, tag_id|
  IncomeTransactionToTag.create(income_transaction_id: income_transaction_id, tag_id: tag_id)
end
p "Created #{IncomeTransactionToTag.count} tags on income transactions."
