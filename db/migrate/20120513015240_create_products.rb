class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :shtrih_code
      t.integer :postupilo
      t.references :shipment
      t.references :unit
      t.references :supplier
      t.references :section
      t.timestamps
    end
  end
end
