class Product < ActiveRecord::Base
  def to_label
    name
  end
  acts_as_reportable
  belongs_to :shipment
  belongs_to :supplier
  belongs_to :section
  belongs_to :unit
  has_many :buy_lists
  has_many :buys, :through => :buy_lists
end
