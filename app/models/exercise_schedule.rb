class ExerciseSchedule < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :user

  validates :exercise, presence: true
  validates :user, presence: true
end
