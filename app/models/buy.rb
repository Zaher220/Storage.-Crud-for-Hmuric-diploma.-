class Buy < ActiveRecord::Base
#  belongs_to :user
  belongs_to :buyer
  has_many :buy_lists
end
