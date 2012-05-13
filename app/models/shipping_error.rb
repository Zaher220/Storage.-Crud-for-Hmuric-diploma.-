class ShippingError < ActiveRecord::Base
  belongs_to :shipment
end
