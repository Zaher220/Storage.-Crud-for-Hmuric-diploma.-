class Buy < ActiveRecord::Base
#  belongs_to :user
  belongs_to :buyer
  has_many :buy_lists
  has_many :products, :through => :buy_lists
end
