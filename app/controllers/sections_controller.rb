class SectionsController < ApplicationController
  active_scaffold :section do |conf|
    conf.columns.exclude :products
    conf.nested.add_link :products
    conf.columns[:created_at].label = :created_at_label
    conf.columns[:updated_at].label = :updated_at_label
    conf.columns[:storage].label = :storage_label
    conf.columns[:name].label = :section_name_label
    
  end
end 