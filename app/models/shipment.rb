class Shipment < ActiveRecord::Base
#  belongs_to :user
  acts_as_reportable
  has_many :shipping_errors
  has_many :products
  has_many :suppliers,  :through => :products
  has_attached_file :file_name_attach
  def to_label
    created_at
  end
# file_column :file_name_attach
end
