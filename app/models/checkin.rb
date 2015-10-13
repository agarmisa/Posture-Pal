class Checkin < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true

  def tally(user)
    user.checkins.sum(:count)
  end
end
