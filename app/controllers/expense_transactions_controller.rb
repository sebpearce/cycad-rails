class ExpenseTransactionsController < ApplicationController
  def index
    @expense_transactions = ExpenseTransaction.all
    render json: @expense_transactions
  end

  def show
    start_date = params[:start_date].present? ? DateTime.parse(params[:start_date], "%Y-%m-%d") : Date.current - 3.months
    end_date = params[:end_date].present? ? DateTime.parse(params[:end_date], "%Y-%m-%d") : Date.current
    @expense_transaction = ExpenseTransaction.where(date: start_date..end_date)
    render json: @expense_transaction
  end

  # TODO: accept params for date range
end
