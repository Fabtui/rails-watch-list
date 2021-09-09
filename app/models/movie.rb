class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
                  against: [ :title ],
                  using: {
                    tsearch: { prefix: true }
    }
end
