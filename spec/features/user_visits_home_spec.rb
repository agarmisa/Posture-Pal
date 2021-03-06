require 'rails_helper'

feature 'user visits homepage', %{
  As a user
  I want to visit the app homepage
  So that I can decide where to navigate to
} do
  # Acceptance Criteria
  # - User must be presented with options to log in or sign up
  # - If user is logged in, she will be presented with links to exercises
  # - User has an add phone form, if she has not yet added one

  context 'user visits home page' do
    scenario 'not signed in user is able to see all pertinent links' do
      FactoryGirl.create(:exercise)

      visit root_path
      expect(page).to_not have_content('Scapular Retractions')
      expect(page).to_not have_content('My Page')
    end
  end

  context 'user visits home page' do
    scenario 'logged-in user is able to see all exercise links' do
      FactoryGirl.create(:exercise)
      user = FactoryGirl.create(:user)
      sign_in(user)

      expect(page).to have_content('Scapular Retractions')
      expect(page).to have_content('My Page')
      expect(page).to have_content('Sign Out')
    end
  end

  context 'user visits home page' do
    scenario 'logged-in user sees phone form, if one has not been added' do
      user = FactoryGirl.create(:user)
      FactoryGirl.create(:exercise)
      sign_in(user)

      expect(page).to have_content('Add your number to start receiving texts')
    end
  end

  context 'user visits home page' do
    scenario 'logged-in user does not see phone form, if number was added' do
      FactoryGirl.create(:exercise)
      user = FactoryGirl.create(:user)
      user.phone = "+18477777777"
      user.save
      sign_in(user)

      expect(page).to_not have_content('Add your number, to start receiving texts')
    end
  end
end
