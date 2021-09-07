# frozen_string_literal: true

class AuthorBook < ApplicationRecord
  belongs_to :author
  belongs_to :book

  validates :author_id, uniqueness: { scope: :book_id }
  validates :author_id, :book_id, presence: true
end
