# frozen_string_literal: true

class Book < ApplicationRecord
  validates :title, presence: true

  has_many :author_books, dependent: :destroy
  has_many :authors, through: :author_books

  belongs_to :publisher

  has_many :publisher_bookshops, dependent: :destroy
  has_many :bookshops, through: :publisher_bookshops
end
