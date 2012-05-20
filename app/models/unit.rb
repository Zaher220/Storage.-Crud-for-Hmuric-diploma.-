class Unit < ActiveRecord::Base

  def to_s
    name
  end
  has_many :products
end
