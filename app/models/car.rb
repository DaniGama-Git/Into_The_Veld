require "pg_search"
class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  include PgSearch::Model
  pg_search_scope :search_by_make_and_model,
    against: [ :make, :model ],
    using: {
      tsearch: { prefix: true }
    }
end
