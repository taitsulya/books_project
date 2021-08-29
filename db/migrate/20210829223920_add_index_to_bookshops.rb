# frozen_string_literal: true

class AddIndexToBookshops < ActiveRecord::Migration[6.1]
  def change
    add_index :bookshops, :name, unique: true
  end
end
