require 'rails_helper'

feature 'user sees her daily program', %{
  As a user
  I want to view a daily exercise regimen
  So that I can improve my posture, strength, and flexibility
} do
  # Acceptance Criteria
  # - User must see full exercise program

  context 'user views full exercise program' do
    scenario 'user is able to see full exercise program' do
      program = FactoryGirl.create(:program)
      user = FactoryGirl.create(:user)
      exercise = FactoryGirl.create(:exercise)
      program.exercises << exercise

      visit new_user_registration_path

      fill_in 'Email', with: 'john@example.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'

      click_button 'Sign up'
      visit program_path(program)
      expect(page).to have_content('All About the Back')
      expect(page).to have_content('Scapular Retraction')
      save_and_open_page

    end
  end
end
