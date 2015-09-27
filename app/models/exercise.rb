class Exercise < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :repetition, presence: true
  
end
