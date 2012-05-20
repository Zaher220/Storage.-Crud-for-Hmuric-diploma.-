class Section < ActiveRecord::Base
  acts_as_reportable
  belongs_to :storage
  has_many :products
end
