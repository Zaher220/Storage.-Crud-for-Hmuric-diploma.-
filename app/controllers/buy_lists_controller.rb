class BuyListsController < ApplicationController
  active_scaffold :buy_list do |conf|
#    conf.
#    conf.columns.add :opt_price, :single_price, :suppls_price
    conf.list.columns << :get_opt_price
    conf.list.columns << :get_single_price
    conf.list.columns << :get_suppls_price
    conf.columns[:created_at].label = :created_at_label
    conf.columns[:updated_at].label = :updated_at_label
  end
end 