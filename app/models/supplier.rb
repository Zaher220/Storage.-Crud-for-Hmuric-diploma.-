class Supplier < ActiveRecord::Base
  has_many :products
  has_many :shipments,  :through => :products
end
