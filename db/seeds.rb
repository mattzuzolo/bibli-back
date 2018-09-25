# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Collection.destroy_all
Book.destroy_all

matt = User.create(email: "matt@gmail.com")
david = User.create(email: "david@gmail.com")
kayla = User.create(email: "kayla@gmail.com")

matts_collection_one = Collection.create(name: "Matt Collection 1", user_id: matt.id)
matts_collection_two = Collection.create(name: "Matt Collection 2", user_id: matt.id)
matts_collection_three = Collection.create(name: "Matt Collection 3", user_id: matt.id)
davids_collection_one = Collection.create(name: "David Collection 1", user_id: david.id)
kaylas_collection_one = Collection.create(name: "Kayla Collection 1", user_id: kayla.id)

hamlet = Book.create(title: "Hamlet", author: "William Shakespeare")
mockingbird = Book.create(title: "To Kill a Mockingbird", author: "Harper Lee")
big_sleep = Book.create(title: "The Big Sleep", author: "Raymond Chandler")
ficciones = Book.create(title: "Ficciones", author: "Jorge Luis Borges")
frankenstein = Book.create(title: "Frankenstein", author: "Mary Shelley")

# matt_one_hamlet = BooksCollection.create(book_id: hamlet.id, collection_id: matts_collection_one) 
