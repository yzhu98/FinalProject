class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.date :dateofcreation
      t.string :email
      t.string :phone
      t.string :location

      t.timestamps
    end
  end
end
