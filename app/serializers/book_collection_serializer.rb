class BookCollectionSerializer < ActiveModel::Serializer
  attributes :book_id, :collection_id

  belongs_to :collection
  belongs_to :book
end
