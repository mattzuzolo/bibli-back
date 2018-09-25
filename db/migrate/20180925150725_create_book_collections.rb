class CreateBookCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :book_collections do |t|
      t.integer :book_id
      t.integer :collection_id
      
      t.timestamps
    end
  end
end
