class Room < ApplicationRecord
  require 'yaml'

  has_many :players
  has_many :games

  before_create :set_access_token



  def set_access_token
    self.token = generate_token
  end

  def generate_token
    loop do
      slang = YAML.load_file('lib/assets/slang.yml')
      token = slang['slang'].sample().downcase
      break token unless Room.where(token: token).exists?
    end
  end
end
