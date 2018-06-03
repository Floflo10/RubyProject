class Topic < ApplicationRecord
  has_many :travels

  validates :name, presence: true
end
