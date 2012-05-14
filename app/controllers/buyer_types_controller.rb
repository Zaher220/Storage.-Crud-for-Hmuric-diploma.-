class BuyerTypesController < ApplicationController
  active_scaffold :buyer_type do |conf|
    conf.columns.exclude :updated_at
    conf.columns.exclude :buyers
    conf.columns[:created_at].label = :created_at_label
    conf.columns[:buyer_type].label = :buyer_type_label
  end
end 