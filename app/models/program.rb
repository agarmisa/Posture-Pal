class Program < ActiveRecord::Base
  has_many :exercise_schedules
  has_many :exercises, through: :exercise_schedules
  has_many :program_users
  has_many :users, through: :program_users

  validates :name, presence: true
end
