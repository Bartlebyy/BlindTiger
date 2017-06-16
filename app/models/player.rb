class Player < ApplicationRecord
  has_one :room
  has_many :games, through: :room
end
