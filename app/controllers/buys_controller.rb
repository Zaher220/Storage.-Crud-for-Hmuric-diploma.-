class BuysController < ApplicationController
  active_scaffold :buy do |conf|
    conf.actions.add :export
    conf.list.columns.exclude :buy_lists
    conf.list.columns.exclude :products
    conf.nested.add_link :buy_lists
    conf.columns[:buyer].form_ui=:select
    conf.columns[:buy_lists].label=:buy_list_label
    conf.columns[:created_at].label = :created_at_label
    conf.columns[:updated_at].label = :updated_at_label
    conf.columns[:buyer].label = :buyer_label
    conf.list.mark_records = true
  end
end 