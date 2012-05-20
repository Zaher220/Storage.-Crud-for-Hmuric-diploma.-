# -*- coding: utf-8 -*-
class ShipmentsController < ApplicationController
  active_scaffold :shipment do |conf|
    conf.create.multipart = true
    conf.update.multipart = true
    conf.columns.exclude :products
    conf.nested.add_link :products
    conf.action_links.add 'report', :type => :member
    conf.columns[:created_at].label = :created_at_label
    conf.columns[:updated_at].label = :updated_at_label
    conf.columns[:shipping_errors].label = :shipping_errors_label
    conf.columns[:file_name_attach].label = :file_name_attach_label
  end
  def report
      rep = Shipment.report_table(
        :all,

        :except => [
          :id,
          :updated_at,
          :created_at,
          :file_name_attach_file_name,
          :file_name_attach_content_type,
          :file_name_attach_file_size,
          :file_name_attach_updated_at
        ],
        :include => {
            :products => {
              :only => [
                :name,
                :postupilo

              ]
            },
            :suppliers => {
              :only => [
                :name
              ]
            }
        }
      )
#:shipment => {
#              :only => [
#                :name,
#                :postupilo],
#              :except =>[
#                :id,
#                :updated_at,
#                :created_at]
#            },




      File.open("public/system/shipments/reports/report.csv", "w") {
        |file| file.write rep.to_csv
      }
      render :text=> '<a href="/system/shipments/reports/report.csv?33">Нажмите что-бы скачать отчет</a>'
  end
end 