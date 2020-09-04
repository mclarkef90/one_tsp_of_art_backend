class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :year
      t.string :image_url
      t.text :description
      t.integer :likes
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
