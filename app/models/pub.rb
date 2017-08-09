class Pub < ApplicationRecord
  has_many :reviews

  validates :name, presence: true
  validates :happy_hour_price, numericality: { only_integer: true, allow_nil: true }
end
