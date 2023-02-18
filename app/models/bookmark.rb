class Bookmark < ApplicationRecord
  belongs_to :movie, :list
  validates :movie, uniqueness: { scope: list }
  validates :comment, length: { minimum: 6 }
end
