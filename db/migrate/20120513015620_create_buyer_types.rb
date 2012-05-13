class CreateBuyerTypes < ActiveRecord::Migration
  def change
    create_table :buyer_types do |t|
      t.string :type
      t.timestamps
    end
  end
end
