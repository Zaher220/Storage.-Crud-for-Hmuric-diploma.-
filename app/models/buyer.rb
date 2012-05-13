class Buyer < ActiveRecord::Base
  has_many :buys
  belongs_to :buyer_type
end
