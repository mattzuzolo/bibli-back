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

# hamlet = Book.create(title: "Hamlet", author: "William Shakespeare")
# mockingbird = Book.create(title: "To Kill a Mockingbird", author: "Harper Lee")
# big_sleep = Book.create(title: "The Big Sleep", author: "Raymond Chandler")
# ficciones = Book.create(title: "Ficciones", author: "Jorge Luis Borges")
# frankenstein = Book.create(title: "Frankenstein", author: "Mary Shelley")
# kafka = Book.create(title: "Kafka on the Shore", author: "Haruki Murakami")
# brave = Book.create(title: "Brave New World", author: "Aldous Huxley")
# fever = Book.create(title: "Fever Pitch", author: "Nick Hornby")
# quijote = Book.create(title: "Don Quijote", author: "Miguel de Cervantes")
# bell = Book.create(title: "The Bell Jar", author: "Sylvia Plath")
# aleph = Book.create(title: "El Alpeh", author: "Jorge Luis Borges")
# macbeth = Book.create(title: "Macbeth", author: "William Shakespeare")

# matts_one_hamlet = BookCollection.create(book_id: hamlet.id, collection_id: matts_collection_one)
# matts_one_ficciones = BookCollection.create(book_id: ficciones.id, collection_id: matts_collection_one)
# matts_one_frankenstein = BookCollection.create(book_id: frankenstein.id, collection_id: matts_collection_one)
#
# matts_two_fever = BookCollection.create(book_id: fever.id, collection_id: matts_collection_two)
# matts_two_bell = BookCollection.create(book_id: bell.id, collection_id: matts_collection_two)
# matts_two_quijote = BookCollection.create(book_id: quijote.id, collection_id: matts_collection_two)
#
# matts_three_kafka = BookCollection.create(book_id: kafka.id, collection_id: matts_collection_three)
# matts_three_aleph = BookCollection.create(book_id: aleph.id, collection_id: matts_collection_three)
# matts_three_macbeth = BookCollection.create(book_id: macbeth.id, collection_id: matts_collection_three)
#
# davids_one_mockingbird = BookCollection.create(book_id: mockingbird.id, collection_id: davids_collection_one)
# davids_one_big_sleep = BookCollection.create(book_id: big_sleep.id, collection_id: davids_collection_one)
# davids_one_macbeth = BookCollection.create(book_id: macbeth.id, collection_id: davids_collection_one)
#
# kaylas_one_quijote = BookCollection.create(book_id: quijote.id, collection_id: kaylas_collection_one)
# kaylas_one_frankenstein = BookCollection.create(book_id: frankenstein.id, collection_id: kaylas_collection_one)
# kaylas_one_brave = BookCollection.create(book_id: brave.id, collection_id: kaylas_collection_one)
