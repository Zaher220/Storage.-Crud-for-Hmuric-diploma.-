class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :name
      t.string :contact_face
      t.string :adress
      t.string :tel
      t.string :email
      t.references :buyer_type
      t.timestamps
    end
  end
end
