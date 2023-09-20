# spec/features/categories_spec.rb
require 'rails_helper'

RSpec.feature 'Categories', type: :feature do
  it 'User visits new category page' do
    visit new_category_path
    expect(page).to have_content("Create a New Category")
  end

  it 'User fills out category creation form correctly' do
    visit new_category_path
    fill_in "Name", with: "Groceries"
    fill_in "Icon", with: "fa-shopping-cart"
    click_button "Save"
    expect(page).to have_content("Groceries")
  end

  it 'User visits categories index page' do
    visit categories_path
    expect(page).to have_content("Categories")
  end

  it "User clicks on 'View Transactions' link for a category" do
    category = Category.create(name: "Groceries")
    visit categories_path
    click_link "View Transactions", href: category_transactions_path(category)
    expect(page).to have_content("Transactions for Groceries")
  end
end
