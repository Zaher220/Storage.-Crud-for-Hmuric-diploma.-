class ShipmentsController < ApplicationController
  active_scaffold :shipment do |conf|
    conf.create.multipart = true
    conf.update.multipart = true
  end
end 