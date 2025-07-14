class CreateNotebooks < ActiveRecord::Migration[8.0]
  def change
    create_table :notebooks do |t|
      t.string :equipment_identifier
      t.string :serial_number
      t.string :asset_number
      t.date :manufacture_date
      t.text :description
      t.string :brand
      t.string :model
      t.date :purchase_date
      t.string :status

      t.timestamps
    end
    add_index :notebooks, :equipment_identifier, unique: true
    add_index :notebooks, :serial_number, unique: true
    add_index :notebooks, :asset_number, unique: true
  end
end
