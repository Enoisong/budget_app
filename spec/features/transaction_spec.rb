# spec/features/transactions_spec.rb
require 'rails_helper'

RSpec.feature 'Transactions', type: :feature do
  it 'User visits new transaction page' do
    # category = Category.create(name: "Groceries")
    # visit new_category_transaction_path(category)
    # expect(page).to have_content("Create a New Transaction")
  end

  it 'User fills out transaction creation form correctly' do
    # category = Category.create(name: "Groceries")
    # visit new_category_transaction_path(category)
    # fill_in "Name", with: "Eggs"
    # fill_in "Amount", with: 2.99
    # select category.name, from: "Category"
    # click_button "Save"
    # expect(page).to have_content("Eggs")
  end

  it 'User visits transactions index page for a category' do
    # category = Category.create(name: "Groceries")
    # visit category_transactions_path(category)
    # expect(page).to have_content("Transactions for Groceries")
  end

  it "User clicks 'Add a New Transaction' link" do
    # category = Category.create(name: "Groceries")
    # visit category_transactions_path(category)
    # click_link "Add a New Transaction", href: new_category_transaction_path(category)
    # expect(page).to have_content("Create a New Transaction")
  end
end
