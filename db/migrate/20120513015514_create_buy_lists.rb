class CreateBuyLists < ActiveRecord::Migration
  def change
    create_table :buy_lists do |t|
      t.integer :amount
      t.references :product
      t.references :buy
      t.timestamps
    end
  end
end
