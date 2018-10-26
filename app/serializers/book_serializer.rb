class BookSerializer < ActiveModel::Serializer
  attributes :id

  has_many :book_collections
  has_many :collections, through: :book_collections
end
