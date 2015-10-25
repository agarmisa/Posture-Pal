require 'rails_helper'

feature 'user logs days she exercised on the user show page', %{
  As a user
  I want to log that I performed my exercise today
  So that I can see all of my wonderful accomplishments
} do

  # Acceptance Criteria:
  # User must see the running total of the numbers of days that she has performed her exercises

  scenario 'user increments the number of days she has exercised', js: true do
    user = FactoryGirl.create(:user)
    FactoryGirl.create(:exercise)
    sign_in(user)

    visit user_path(user)
    expect(page).to have_content (user.name)
    expect(page).to have_content('booty days total')
    expect(page).to_not have_content('1 days total')

    find('.checkin').click
    expect(page).to have_content('1 days total')
  end
end
