class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.references :user
      t.timestamps
    end
  end
end
