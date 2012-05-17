class Shipment < ActiveRecord::Base
#  belongs_to :user
  has_many :shipping_errors
  has_many :products
  has_attached_file :file_name_attach
# file_column :file_name_attach
end
