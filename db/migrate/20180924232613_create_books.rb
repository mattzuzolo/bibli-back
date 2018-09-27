class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.string :year
      t.string :description
      t.integer :page_count
      t.string :google_id
      t.string :google_url #canonicalVolumeLink
      t.string :thumbnail_url
      t.string :isbn_ten
      t.string :isbn_thirteen

      t.timestamps
    end
  end
end
