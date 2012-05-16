class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
#      t.references :user
      t.string :file_name_attach
      t.timestamps
    end
  end
end
