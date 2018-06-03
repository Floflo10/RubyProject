class Favorite < ApplicationRecord
  belongs_to :user
  has_many :travel

  validates :user, :travel, presence: true
end
