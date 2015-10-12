require 'rails_helper'

feature 'user visits homepage', %{
  As a user
  I want to visit the app homepage
  So that I can decide where to navigate to
} do
  # Acceptance Criteria
  # - User must be presented with options to log in or sign up
  # - User must be presented with option to visit program show page
  # - If user is logged in, she will be presented with an index of exercises
  # - If user, has not added phone number, user is presented with a form to do so

  context 'user visits home page' do
    scenario 'not signed in user is able to see all pertinent links' do
      FactoryGirl.create(:exercise)

      visit root_path
      expect(page).to_not have_content('Scapular Retractions')
    end
  end

  context 'user visits home page' do
    scenario 'logged-in user is able to see all exercise links' do
      FactoryGirl.create(:exercise)
      user = FactoryGirl.create(:user)
      sign_in(user)

      expect(page).to have_content('Scapular Retractions')
    end
  end

  context 'user visits home page' do
    scenario 'logged-in user is able to see add a phone number form, if one has not been added' do
      user = FactoryGirl.create(:user)
      sign_in(user)

      expect(page).to have_content('Add your number, to start receiving texts')
    end
  end

  context 'user visits home page' do
    scenario 'logged-in user does not see phone form, if a number has been added' do
      user = FactoryGirl.create(:user)
      user.phone = "+18477777777"
      user.save
      sign_in(user)

      expect(page).to_not have_content('Add your number, to start receiving texts')
    end
  end
end
