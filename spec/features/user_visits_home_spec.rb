require 'rails_helper'

feature 'user visits homepage', %{
  As a user
  I want to visit the app home page
  So that I can decide where to navigate
} do
  # Acceptance Criteria
  # - User must be presented with options to log in, sign up, or visit program show page
  # - User questionably is presented with a link to an exercise index page

  context 'user visits home page' do
    scenario 'user is able to see all pertinent links' do
      program = FactoryGirl.create(:program)
      user = FactoryGirl.create(:user)
      exercise = FactoryGirl.create(:exercise)
      program.exercises << exercise

      visit new_user_registration_path

      fill_in 'Email', with: 'john@example.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'

      click_button 'Sign up'
      visit root_path
      expect(page).to have_content('All About the Back')
    end
  end
end
