class ProductsController < ApplicationController
  active_scaffold :product do |conf|
    conf.subform.layout = :vertical
    conf.columns.exclude :buy_lists
    conf.columns.exclude :buys
    conf.columns[:created_at].label = :created_at_label
    conf.columns[:updated_at].label = :updated_at_label
    conf.columns[:name].label = :product_name_label
    conf.columns[:opt_price].label = :opt_price_label
    conf.columns[:postupilo].label = :postupilo_label
    conf.columns[:shtrih_code].label = :shtrih_code_label
    conf.columns[:single_price].label = :single_price_label
    conf.columns[:suppls_price].label = :suppls_price_label
    conf.columns[:section].label = :section_label
    conf.columns[:supplier].label = :supplier_label
    conf.columns[:unit].label = :unit_label
    conf.columns[:shipment].label = :shipment_label
  end
end 