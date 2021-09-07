# frozen_string_literal: true

class AddBookToPublisherBookshops < ActiveRecord::Migration[6.1]
  def change
    add_reference :publisher_bookshops, :book, null: false, foreign_key: true
  end
end
