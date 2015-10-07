require 'rails_helper'

feature 'user visits homepage', %{
  As a user
  I want to visit the app homepage
  So that I can decide where to navigate to
} do
  # Acceptance Criteria
  # - User must be presented with options to log in or sign up
  # - User must be presented with option to visit program show page
  # - User questionably is presented with a link to an exercise index page

  context 'user visits home page' do
    scenario 'not signed in user is able to see all pertinent links' do
      FactoryGirl.create(:exercise)

      visit root_path
      expect(page).to_not have_content('Scapular Retractions')
    end
  end

  context 'user visits home page' do
    scenario 'user is able to see all pertinent links' do
      FactoryGirl.create(:exercise)
      FactoryGirl.create(:user)
      visit new_user_registration_path

      fill_in 'Email', with: 'john@example.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'

      click_button 'Sign up'

      visit root_path

      expect(page).to have_content('Scapular Retractions')
    end
  end
end
