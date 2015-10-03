class Exercise < ActiveRecord::Base
  has_many :exercise_schedules
  has_many :programs, through: :exercise_schedules

  validates :name, presence: true
  validates :description, presence: true
  validates :repetition, presence: true
end
