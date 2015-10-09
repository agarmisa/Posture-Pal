require 'rails_helper'

feature 'user sees information about herself', %{
  As a user
  I want to see my personal page
  So that I can log performance of exercises
} do
  # Acceptance Criteria
  # - User must see her personal information
  # - User must be able to log her performance

  context 'user views personal information' do
    scenario 'user is able to see all personal information' do
      user = FactoryGirl.create(:user)

      visit new_user_registration_path

      fill_in 'Email', with: 'john@example.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'

      click_button 'Sign up'
      visit user_path(user)
      expect(page).to have_content('keep it up!')
    end
  end
end
