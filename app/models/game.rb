class Game < ApplicationRecord
  belongs_to :room
  has_many :players, through: :room
end
