require 'rails_helper'

RSpec.feature 'Splash', type: :feature do
  scenario 'should display the Splash by redirecting' do
    visit root_path
    expect(page).to have_content('My Budget App')
  end
end
