class User < ApplicationRecord
  has_many :collections
  has_many :books, through: :collections
end
