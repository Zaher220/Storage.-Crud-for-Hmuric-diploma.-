class Shipment < ActiveRecord::Base
#  belongs_to :user
  has_many :shipping_errors
  has_many :products
end
