class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :storage
      t.string :name
      t.timestamps
    end
  end
end
