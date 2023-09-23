require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  before :each do
    @user = User.create!(full_name: 'John Doe', email: 'john@example.com', password: 'password',
                         password_confirmation: 'password')
    sign_in @user
  end

  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #new' do
    it 'returns http success' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
end
