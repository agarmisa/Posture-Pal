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
      exercise = FactoryGirl.create(:exercise)
      sign_in(user)

      visit user_path(user)
      expect(page).to have_content('keep it up!')
    end
  end
end
