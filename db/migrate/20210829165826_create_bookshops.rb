# frozen_string_literal: true

class CreateBookshops < ActiveRecord::Migration[6.1]
  def change
    create_table :bookshops do |t|
      t.string :name

      t.timestamps
    end
  end
end
