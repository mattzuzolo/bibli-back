class BookCollectionSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :book
  belongs_to :collection
end
