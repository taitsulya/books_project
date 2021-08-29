# frozen_string_literal: true

class CreatePublisherBookshops < ActiveRecord::Migration[6.1]
  def change
    create_table :publisher_bookshops do |t|
      t.references :publisher, null: false, foreign_key: true
      t.references :bookshop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
