module Merit
  class BadgeRules
    include Merit::BadgeRulesMethods

    def initialize
      grant_on 'checkins#create', badge_id: 1, to: :user do |checkin|
        checkin.count >= 10
      end

      grant_on 'checkins#create', badge_id: 2, to: :user do |checkin|
        checkin.count >= 25
      end

      grant_on 'checkins#create', badge_id: 3, to: :user do |checkin|
        checkin.count >= 50
      end

      grant_on 'checkins#create', badge_id: 4, to: :user do |checkin|
        checkin.count >= 75
      end

      grant_on 'checkins#create', badge_id: 5, to: :user do |checkin|
        checkin.count >= 100
      end

      grant_on 'checkins#create', badge_id: 6, to: :user do |checkin|
        checkin.count >= 200
      end

      grant_on 'checkins#create', badge_id: 7, to: :user do |checkin|
        checkin.count >= 300
      end

      grant_on 'checkins#create', badge_id: 8, to: :user do |checkin|
        checkin.count >= 40
      end
    end
  end
end
