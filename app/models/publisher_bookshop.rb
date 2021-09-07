# frozen_string_literal: true

class PublisherBookshop < ApplicationRecord
  belongs_to :publisher
  belongs_to :bookshop

  validates :publisher_id, uniqueness: { scope: :bookshop_id }
  validates :publisher_id, :bookshop_id, presence: true
end
