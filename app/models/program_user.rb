class ProgramUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :program

  validates :user, presence: true
  validates :program, presence: true
end
