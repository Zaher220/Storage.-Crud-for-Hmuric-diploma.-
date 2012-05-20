class ShipmentsController < ApplicationController
  active_scaffold :shipment do |conf|
    conf.create.multipart = true
    conf.update.multipart = true
    conf.columns.exclude :products
    conf.nested.add_link :products
    conf.action_links.add 'import', :type => :member
    conf.columns[:created_at].label = :created_at_label
    conf.columns[:updated_at].label = :updated_at_label
    conf.columns[:shipping_errors].label = :shipping_errors_label
    conf.columns[:file_name_attach].label = :file_name_attach_label
  end
  #require 'csv'
  def import
      idd = Shipment.find(params[:id])
    #puts @idd[:file_name_attach]
#    CSV.open('idd.file_name_attach', 'r').each do |row|
#      User.create(:username => row[0], :email => row[1])
#    end
  end
end 