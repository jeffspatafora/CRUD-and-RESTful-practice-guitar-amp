class CreateGuitarAmplifiers < ActiveRecord::Migration[7.0]
  def change
    create_table :guitar_amplifiers do |t|
      t.string :brand
      t.string :model
      t.integer :price
      t.string :image_url

      t.timestamps
    end
  end
end
