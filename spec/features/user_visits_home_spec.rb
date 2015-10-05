require 'rails_helper'

feature 'user visits homepage', %{
  As a user
  I want to visit the app homepage
  So that I can decide where to navigate to
} do
  # Acceptance Criteria
  # - User must be presented with options to log in, sign up, or visit program show page
  # - User questionably is presented with a link to an exercise index page

  context 'user visits home page' do
    scenario 'user is able to see all pertinent links' do
      program = FactoryGirl.create(:program)
      user = FactoryGirl.create(:user)

      visit root_path
      expect(page).to have_content('All About the Back')
    end
  end
end
