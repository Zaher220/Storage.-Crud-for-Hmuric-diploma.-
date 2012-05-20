class BuyList < ActiveRecord::Base
  belongs_to :buy
  belongs_to :product

  validates :amount, :inclusion => {:in => lambda { |x| 1..(x.product.postupilo)},:message => "Amount should be before " }

  after_create do |buy_list|
    @pr=Product.find(buy_list.product_id)
    @pr.postupilo=@pr.postupilo-buy_list.amount
    @pr.save
  end

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
