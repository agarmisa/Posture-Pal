require 'rails_helper'

feature 'admin visits users index', %{
  As an admin
  I want to visit the users index
  So that I can see and delete all users
} do

  # Acceptance Criteria:
  # * Admin must see list of all users
  # * Visitor must not see the page
  # * Admin can delete users

  scenario 'admin visits users index' do
    user1 = FactoryGirl.create(:user, role: 'admin')
    user2 = FactoryGirl.create(:user)
    sign_in(user1)
    visit users_path

    expect(page).to have_content(user1.name)
    expect(page).to have_content(user2.name)
    expect(page).to have_content("Delete This User")
  end

  scenario 'member fails to visit users index' do
    user = FactoryGirl.create(:user)
    sign_in(user)
    expect { visit users_path }.to raise_error(ActionController::RoutingError)
  end

  scenario 'admin deletes user' do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user, role: 'admin')

    sign_in(user2)
    visit users_path

    expect(page).to have_content(user2.name)

    within (".member-list") do
      click_link "Delete This User"
    end

    expect(page).to_not have_content(user1.email)
  end
end
