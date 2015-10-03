require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :program do
    name 'All About the Back'
  end

  factory :exercise do
    name 'Scapular Retractions'
    description 'Draw your shoulder blades back and down, as though trying to squeeze a pencil between them'
    repetition '3 sets of 10'
    image 'www.scapretract.jpg'
  end
end
