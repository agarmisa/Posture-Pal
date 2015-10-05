require 'rails_helper'

feature 'user sees information about an individual exercise', %{
  As a user
  I want to information about an individual exercise
  So that I can make sure that I am doing it correctly
} do
  # Acceptance Criteria
  # - User must see all information about an individual exercise

  context 'user views exercise information' do
    scenario 'user is able to see all exercise information' do
      program = FactoryGirl.create(:program)
      user = FactoryGirl.create(:user)
      exercise = FactoryGirl.create(:exercise)
      program.exercises << exercise

      visit new_user_registration_path

      fill_in 'Email', with: 'john@example.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'

      click_button 'Sign up'
      visit exercise_path(exercise)
      expect(page).to have_content('Scapular Retraction')
    end
  end
end
