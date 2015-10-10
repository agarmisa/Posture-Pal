require 'rails_helper'

feature 'users reports she did her exercises on a particular day', %{
  As a users
  I want to signify that I have done my exercises on a certain day
  So that I can be motivated by my success
} do
  # Acceptance Criteria
  # - User must be presented with button to click noting she has done her exercises that day

  context 'user clicks exercise button' do
    scenario 'user correctly clicks exercise button' do
      user = FactoryGirl.create(:user)
      sign_in(user)
      visit user_path(user)

      click_button 'I kicked booty today'

      expect(page).to have_content('Great job!')
    end
  end
end
