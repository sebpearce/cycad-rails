class IncomeTransactionsController < ApplicationController
  def index
    @income_transactions = IncomeTransaction.all
    render json: @income_transactions
  end

  # def show
  #   @income_transaction = IncomeTransaction.find(params[:id])
  #   render json: @income_transaction
  # end

  # TODO: accept params for date range
end
