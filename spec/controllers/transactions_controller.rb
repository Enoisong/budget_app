require 'rails_helper'

RSpec.describe TransactionsController, type: :controller do
  before :each do
    @user = User.create!(full_name: 'John Doe', email: 'john@example.com', password: 'password',
                         password_confirmation: 'password')
    @category = Category.create!(name: 'Food', icon: 'icon.png', user: @user)
    sign_in @user
  end

  describe 'GET #index' do
    it 'returns http success' do
      get :index, params: { category_id: @category.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #new' do
    it 'returns http success' do
      get :new, params: { category_id: @category.id }
      expect(response).to have_http_status(:success)
    end
  end
end
