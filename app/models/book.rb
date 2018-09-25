class Book < ApplicationRecord
  has_many :book_collections
  has_many :collections, through: :book_collections
end
