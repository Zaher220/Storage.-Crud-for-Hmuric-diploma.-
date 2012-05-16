class AddPriceToProductAndBuyList < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.float :single_price, :opt_price, :suppls_price
    end
  end
end
