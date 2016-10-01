class ExpenseTransactionsController < ApplicationController
  def index
    @expense_transactions = ExpenseTransaction.all
    render json: @expense_transactions
  end

  # def show
  #   @expense_transaction = ExpenseTransaction.find(params[:id])
  #   render json: @expense_transaction
  # end

  # TODO: accept params for date range
end
