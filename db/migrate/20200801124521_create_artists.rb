class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :biography
      t.string :profile_image_url

      t.timestamps
    end
  end
end
