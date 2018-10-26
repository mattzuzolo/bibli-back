class UserSerializer < ActiveModel::Serializer
  attributes :id

  has_many :collections
  has_many :books, through: :collections
end
