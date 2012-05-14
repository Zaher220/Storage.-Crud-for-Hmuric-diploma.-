class ProductsController < ApplicationController
  active_scaffold :product do |conf|
    conf.columns.exclude :buys
  end
end 