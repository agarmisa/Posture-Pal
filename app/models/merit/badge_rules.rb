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
    end
  end
end
