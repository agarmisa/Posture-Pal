class Program < ActiveRecord::Base
  has_many :exercise_schedules
  has_many :exercises, through: :exercise_schedules

  validates :name, presence: true
end
