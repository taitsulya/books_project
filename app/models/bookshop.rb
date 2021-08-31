# frozen_string_literal: true

class Bookshop < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :publisher_bookshops, dependent: :destroy
  has_many :publishers, through: :publisher_bookshops

  scope :where_book_with_title, lambda { |title|
    joins(publishers: :books).where(books: { title: title })
  }
end
