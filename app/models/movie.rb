class Movie < ApplicationRecord
  validates :tile, :overview, presence: true
  validates :title, uniqueness: true
end
