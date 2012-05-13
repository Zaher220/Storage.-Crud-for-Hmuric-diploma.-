class CreateBuys < ActiveRecord::Migration
  def change
    create_table :buys do |t|
      t.references :user
      t.references :buyer
      t.timestamps
    end
  end
end
