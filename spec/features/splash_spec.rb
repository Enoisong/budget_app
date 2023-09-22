# spec/features/splash_spec.rb
require 'rails_helper'

RSpec.feature 'Splash', type: :feature do
  it 'User visits the splash screen' do
    visit root_path
    expect(page).to have_content("Welcome to My Budget App")
  end

  it "User clicks 'Sign Up' link on the splash screen" do
    # visit root_path
    # click_link "Sign Up", href: new_user_registration_path
    # expect(page).to have_content("Sign up")
  end
end
