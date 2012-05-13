class Product < ActiveRecord::Base
  belongs_to :shipment
  belongs_to :supplier
  belongs_to :section
  belongs_to :unit
  has_many :buy_lists
end
