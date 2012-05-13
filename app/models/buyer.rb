class Buyer < ActiveRecord::Base
  has_many :buys
  has_one :buyer_type
end
