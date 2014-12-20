class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :lyricist
      t.string :composer
      t.string :duration
      t.references :company, index: true

      t.timestamps
    end
  end
end
