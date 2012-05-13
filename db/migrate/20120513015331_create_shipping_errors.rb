class CreateShippingErrors < ActiveRecord::Migration
  def change
    create_table :shipping_errors do |t|
      t.text :error_text
      t.references :shipment
      t.timestamps
    end
  end
end
