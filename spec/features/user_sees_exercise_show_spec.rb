require 'rails_helper'

feature 'user sees information about an individual exercise', %{
  As a user
  I want to information about an individual exercise
  So that I can make sure that I am doing it correctly
} do
  # Acceptance Criteria
  # - User must see all information about an individual exercise

  context 'user views exercise information' do
    scenario 'user is able to see all exercise information' do
      user = FactoryGirl.create(:user)
      exercise = FactoryGirl.create(:exercise)

      sign_in(user)
      visit exercise_path(exercise)
      expect(page).to have_content('Scapular Retraction')
    end
  end
end
