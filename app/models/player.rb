class Player < ApplicationRecord
  belongs_to :room, optional: true
  has_many :games, through: :room

  validates :name, presence: true, allow_blank: false
end
