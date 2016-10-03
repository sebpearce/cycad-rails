require 'rails_helper'

describe ExpenseTransactionsController do
  describe 'GET index' do
    it 'responds with a non-zero array of objects' do
      get :index
      parsed_body = JSON.parse(response.body)
      expect(parsed_body.size).to be > 0
    end
  end

  describe '#show' do
    context 'when no start date or end date is provided' do
      it { raise 'TODO' }
    end
    context 'when a start date is provided but no end date' do
      it { raise 'TODO' }
    end
    context 'when no start date is provided but an end date is' do
      it { raise 'TODO' }
    end
    context 'when both a start and end date are provided' do
      it { raise 'TODO' }
    end
  end
end
