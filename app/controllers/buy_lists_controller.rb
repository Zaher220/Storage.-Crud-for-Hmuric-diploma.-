class BuyListsController < ApplicationController
  active_scaffold :buy_list do |conf|
    conf.columns[:created_at].label = :created_at_label
    conf.columns[:updated_at].label = :updated_at_label
  end
end 