class Section < ActiveRecord::Base

  belongs_to :storage
  has_many :products
end
