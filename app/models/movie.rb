class Movie < ApplicationRecord
  has_many :lists, through: :bookmarks
  has_many :bookmarks
  validates :title, presence: true
  validates :overview, presence: true
  validates :title, uniqueness: true
end



#   should not be able to destroy self if has bookmarks children (FAILED - 19)
