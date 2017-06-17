class Player < ApplicationRecord
  has_one :room
  has_many :games, through: :room

  validates :name, presence: true, allow_blank: false
end
