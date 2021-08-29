# frozen_string_literal: true

class Publisher < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :books, dependent: :destroy
  has_many :publisher_bookshops, dependent: :destroy
  has_many :bookshops, through: :publisher_bookshops
end
