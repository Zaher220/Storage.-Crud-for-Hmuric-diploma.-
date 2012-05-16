class BuyList < ActiveRecord::Base
  belongs_to :buy
  belongs_to :product
  def to_s
    'Buy list'
  end
  def get_opt_price
    product.opt_price
  end
  def get_single_price
    product.single_price
  end
  def get_suppls_price
    product.suppls_price
  end
end
