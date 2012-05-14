class BuyerType < ActiveRecord::Base
  def to_label
    buyer_type
  end
  has_many :buyers
end
