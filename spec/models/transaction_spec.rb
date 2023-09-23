require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe 'validations' do
    it 'validates numericality of amount greater than 0' do
      transaction = Transaction.new(amount: -1)
      expect(transaction).to_not be_valid
    end
  end
end
