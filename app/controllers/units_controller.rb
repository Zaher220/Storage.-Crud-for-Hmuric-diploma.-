class UnitsController < ApplicationController
  active_scaffold :unit do |conf|
    conf.columns.exclude :updated_at
    conf.columns.exclude :products
    conf.columns[:created_at].label = :created_at_label
    conf.columns[:name].label = :ones_name_label
  end
end 