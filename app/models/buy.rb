class Buy < ActiveRecord::Base
#  belongs_to :user
  belongs_to :buyer
  has_many :buy_lists
  has_many :products, :through => :buy_lists
  def to_label
    Buyer.name
  end
#  def get_sales_count_with_names
#    buy_list.products[]
#  end
end
