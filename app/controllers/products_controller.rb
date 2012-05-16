class ProductsController < ApplicationController
  active_scaffold :product do |conf|
    conf.subform.layout = :vertical
    conf.columns.exclude :buy_lists
    conf.columns.exclude :buys
  end
end 