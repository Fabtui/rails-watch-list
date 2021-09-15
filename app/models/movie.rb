class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  validates :title, presence: true, uniqueness: { scope: :user_id }

  include PgSearch::Model
  pg_search_scope :global_search,
                  against: [ :title, :overview, :actor, :director ],
                  using: {
                    tsearch: { prefix: true }
    }
end
