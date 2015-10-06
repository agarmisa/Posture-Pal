require 'rails_helper'

feature 'User signs in to application with facebook', %{
As a user
I want to use my facebook account to sign up,
So that it takes less time to sign up
} do

  context 'New user signs in with facebook' do
    scenario 'User successfully logs in with facebook' do
      mock_facebook_auth!
      visit root_path
      click_on 'Sign In with Facebook'
      expect(page).to have_link("Sign Out")
    end
  end
end
