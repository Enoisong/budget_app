require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is not valid without a full name' do
    user = User.new(email: 'test@example.com', password: 'password', password_confirmation: 'password')
    expect(user).to_not be_valid
  end

  it 'is not valid without an email address' do
    user = User.new(full_name: 'Test User', password: 'password', password_confirmation: 'password')
    expect(user).to_not be_valid
  end

  it 'is not valid with a duplicate email address' do
    User.create!(full_name: 'User 1', email: 'test@example.com', password: 'password',
                 password_confirmation: 'password')
    user = User.new(full_name: 'User 2', email: 'test@example.com', password: 'password',
                    password_confirmation: 'password')
    expect(user).to_not be_valid
  end
end
