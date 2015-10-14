module Merit
  class BadgeRules
    include Merit::BadgeRulesMethods

    def initialize
      grant_on 'checkins#create', badge_id: 1, to: :user do |checkin|
        checkin.count >= 5
      end

      grant_on 'checkins#create', badge_id: 2, to: :user do |checkin|
        checkin.count >= 10
      end

      grant_on 'checkins#create', badge_id: 3, to: :user do |checkin|
        checkin.count >= 15
      end

      grant_on 'checkins#create', badge_id: 4, to: :user do |checkin|
        checkin.count >= 20
      end
    end
  end
end
