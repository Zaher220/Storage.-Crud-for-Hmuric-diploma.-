class CreateStorages < ActiveRecord::Migration
  def change
    create_table :storages do |t|
      t.string :name
      t.text :adress
      t.timestamps
    end
  end
end
