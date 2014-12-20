class CreateContains < ActiveRecord::Migration
  def change
    create_table :contains do |t|
      t.references :song, index: true
      t.references :album, index: true

      t.timestamps
    end
  end
end
