class User < ActiveRecord::Base
  has_many :program_users
  has_many :programs, through: :program_users
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.find_or_create_from_auth_hash(auth_hash)
    User.find_or_create_by(provider)
  end
end
