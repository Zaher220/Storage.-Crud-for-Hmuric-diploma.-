class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :contact_face
      t.string :adress
      t.string :tel
      t.string :email
      t.timestamps
    end
  end
end
