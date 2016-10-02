Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'

  get '/expenses' => 'expense_transactions#index'
  get '/expenses/range' => 'expense_transactions#show'
  get '/income' => 'income_transactions#index'
  get '/expense_categories' => 'expense_categories#index'
  get '/income_categories' => 'income_categories#index'
  get '/tags' => 'tags#index'
end
