require 'rails_helper'

feature 'user sees information about herself', %{
  As a user
  I want to see my personal page
  So that I can log performance of exercises
} do
  # Acceptance Criteria
  # - User must see her personal information
  # - User must be able to log her performance

  scenario 'user is able to see all personal information' do
    user = FactoryGirl.create(:user)
    FactoryGirl.create(:exercise)
    sign_in(user)

    visit user_path(user)
    expect(page).to have_content('keep it up!')
  end

  scenario 'logged-in user is able to see all topbar links' do
    FactoryGirl.create(:exercise)
    user = FactoryGirl.create(:user)
    sign_in(user)

    visit user_path(user)
    expect(page).to have_content('Scapular Retractions')
    expect(page).to have_content('My Page')
    expect(page).to have_content('Sign Out')
  end
end
