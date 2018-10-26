class UserSerializer < ActiveModel::Serializer
  attributes :id, :email

  has_many :collections
  has_many :books, through: :collections
end
