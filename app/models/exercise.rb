class Exercise < ActiveRecord::Base
  has_many :exercise_schedules
  has_many :users, through: :exercise_schedules

  validates :name, presence: true
  validates :description, presence: true
  validates :repetition, presence: true
end
