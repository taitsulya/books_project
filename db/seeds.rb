# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
  Publisher.create(
    name: "Publisher #{i}"
  )
  Bookshop.create(
    name: "Bookshop #{i}"
  )
  PublisherBookshop.create(
    publisher_id: i,
    bookshop_id: i
  )
  Book.create(
    title: "Book #{i}",
    publisher_id: i
  )
  Author.create(
    first_name: "First #{i}",
    last_name: "Last #{i}"
  )
  AuthorBook.create(
    author_id: i,
    book_id: i
  )
end
