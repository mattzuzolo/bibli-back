class CollectionSerializer < ActiveModel::Serializer
  attributes :id

  has_many :book_collections
  has_many :books, through: :book_collections
end
