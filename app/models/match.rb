class Match < ApplicationRecord
  has_many :users

  validates :user_id, presence: true
end
