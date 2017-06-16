class Game < ApplicationRecord
  has_one :room
  has_many :players, through: :room
end
