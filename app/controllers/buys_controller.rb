class BuysController < ApplicationController
  active_scaffold :buy do |conf|
    #conf.columns.exclude :buy_lists
    conf.nested.add_link :buy_lists
    conf.columns[:buyer].form_ui=:select
    #conf.columns[:buy_lists].form_ui=:record_select
    conf.columns[:created_at].label = :created_at_label
    conf.columns[:updated_at].label = :updated_at_label
  end
end 