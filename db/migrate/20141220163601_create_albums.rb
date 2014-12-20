class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :publisher
      t.date :dateofpublication
      t.string :language
      t.references :singer, index: true

      t.timestamps
    end
  end
end
