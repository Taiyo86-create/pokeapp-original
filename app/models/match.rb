class Match < ApplicationRecord
  has_many :match_users
  has_many :users, through: :match_users

  validates :user_id, presence: true
end
