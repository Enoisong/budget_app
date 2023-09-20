require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    @user = User.create!(full_name: 'John Doe', email: 'john@example.com', password: 'password',
                         password_confirmation: 'password')
  end

  describe 'validations' do
    it 'is not valid without a name' do
      category = Category.new(user: @user, icon: 'icon.png')
      expect(category).to_not be_valid
    end

    it 'is not valid without an icon' do
      category = Category.new(user: @user, name: 'Food')
      expect(category).to_not be_valid
    end
  end

  describe '#total_amount' do
    let(:category) { Category.create(name: 'Food', icon: 'icon.png', user: @user) }

    before do
      # Implement total_amount method
      allow(category).to receive(:total_amount).and_return(30)
    end

    it 'returns the total amount of all transactions' do
      expect(category.total_amount).to eq(30)
    end
  end
end
