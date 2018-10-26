class BookCollectionSerializer < ActiveModel::Serializer
  attributes :book_id, :collection_id

  belongs_to :book
  belongs_to :collection
end
