class Supplier < ActiveRecord::Base
  acts_as_reportable
  has_many :products
  has_many :shipments,  :through => :products
end
