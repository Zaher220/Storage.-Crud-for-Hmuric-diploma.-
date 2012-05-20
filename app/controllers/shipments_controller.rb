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
require 'csv'
  def report
#      rep = Shipment.report_table(
#        :all,
#
#        :except => [
#          :id,
#          :updated_at,
#          :created_at,
#          :file_name_attach_file_name,
#          :file_name_attach_content_type,
#          :file_name_attach_file_size,
#          :file_name_attach_updated_at
#        ],
#        :include => {
#            :products => {
#              :conditions => "product.unit_id=unit.id",
#              :only => [
#                :name,
#                :postupilo
#              ]
#            },
#            :suppliers => {
#              :only => [
#                :name
#              ]
#            },
#            :units => {
#              :only => [
#                :name
#              ]
#            }
#        }
#      )
sql='SELECT
          `products`.`name` as pr_name,
          `products`.`postupilo` ,
          `units`.`name` as un_name,
          `suppliers`.`name` as su_name,
          `sections`.`name` as se_name,
          `storages`.`name` as st_name
      FROM `shipments`,
          `products`,
          `units`,
          `suppliers`,
          `sections`,
          `storages`
      WHERE
          `shipments`.`id` = `products`.`shipment_id` AND
          `units`.`id` = `products`.`unit_id` AND
          `suppliers`.`id` = `products`.`supplier_id` AND
          `sections`.`id` = `products`.`section_id` AND
          `storages`.`id` = `sections`.`storage_id`'
        m=ActiveRecord::Base.connection.execute(sql)

    CSV.open("public/system/shipments/reports/report.csv", "w") do |csv|
      csv << ['Наименование продукта;На складе;Ед измерения;Поставщик;Секция на складе;Склад']
      m.each do |object|
        csv << [object[0].to_s+';'+object[1].to_s+';'+object[2].to_s+';'+object[3].to_s+';'+object[4].to_s+';'+object[5].to_s]
      end
  end

    #rep = Shipment.report_table()
       #rep = new_view.report_table(:all)
## Ruport::Query.add_source :test,
##                           :dsn => "dbi:mysql:skl",
##                           :user => "root",
##                           :password => "root"
##      query = Ruport::Query.new('SELECT
#          `products`.`name`,
          #`products`.`postupilo`,
          #`units`.`name`,
          #`suppliers`.`name`,
          #`sections`.`name`,
          #`storages`.`name`
      #FROM #`shipments`,
          #`products`,
          #`units`,
          #`suppliers`,
          #`sections`,
          #`storages`
      #WHERE
          #`shipments`.`id` = `products`.`shipment_id` AND
          #`units`.`id` = `products`.`unit_id` AND
          #`suppliers`.`id` = `products`.`supplier_id` AND
          #`sections`.`id` = `products`.`section_id` AND
          #`storages`.`id` = `sections`.`storage_id`#')
#      query.execute
    #query.to_csv
#      File.open("public/system/shipments/reports/report.csv", "w") {
#        |file| file.write rep.to_csv
#      }
      render :text=> '<a href="/system/shipments/reports/report.csv?33">Нажмите что-бы скачать отчет</a>'
  end
end 