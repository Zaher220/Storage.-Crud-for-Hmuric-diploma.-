class StoragesController < ApplicationController
  active_scaffold :storage do |conf|
    conf.actions.add :export
    conf.columns[:created_at].label = :created_at_label
    conf.columns[:name].label = :storage_name_label
    conf.columns[:adress].label = :adress_label
    conf.columns[:updated_at].label = :updated_at_label
    conf.columns[:sections].label = :sections_label
    conf.nested.add_link :sections
  end
end 