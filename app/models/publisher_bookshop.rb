# frozen_string_literal: true

class PublisherBookshop < ApplicationRecord
  belongs_to :publisher
  belongs_to :bookshop
end
