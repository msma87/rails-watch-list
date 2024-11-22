class Movie < ApplicationRecord
  has_many :bookmarks
  has_one_attached :poster
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true

end
