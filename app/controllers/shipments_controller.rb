#encoding: utf-8
#Eto kontroller postavok
class ShipmentsController < ApplicationController

  active_scaffold :shipment do |conf|
    conf.create.multipart = true
    conf.update.multipart = true
    conf.columns.exclude :products
    conf.nested.add_link :products
    conf.action_links.add 'report', :type => :member
    conf.action_links.add 'import', :type => :member
    conf.columns[:created_at].label = :created_at_label
    conf.columns[:updated_at].label = :updated_at_label
    conf.columns[:shipping_errors].label = :shipping_errors_label
    conf.columns[:file_name_attach].label = :file_name_attach_label
    conf.columns[:suppliers].label = :suppliers_label
    conf.columns[:units].label = :units_label
  end
  require 'csv'
  #Importiruem fail i vigrujaem bazu
  def import
    sh=Shipment.find(params[:id])
    id=params[:id]
    if params[:id].to_i<100 && params[:id].to_i>=10
      id='0'+params[:id].to_s
    end
    if params[:id].to_i<10
      id='00'+id.to_s
    end
    url='public/system/shipments/file_name_attaches/000/000/'+id.to_s+'/original/'+sh.file_name_attach_file_name
    CSV.foreach url do |row|
#    @parsed_file= CSV::Reader.parse(File.open(url, 'rb'))
#    @parsed_file.each  do |row|
      c=Product.new
      c.name=row[0]
      c.shtrih_code=row[1]
      c.postupilo=row[2]
      c.shipment_id=params[:id]
      c.single_price=row[3]
      c.opt_price=row[4]
      c.suppls_price=row[5]
      c.save
#      if c.save
#        flash.now[:message]="Error   "#{n}
#      end
#      flash.now[:message]="Allright"
    end
     render :text=> 'Импорт продуктов успешно выполнен'
  end
require 'iconv'
#Tut proishodit export
    def report

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
          `storages`.`id` = `sections`.`storage_id` AND
          `shipments`.`id`='+params[:id]
      m=ActiveRecord::Base.connection.execute(sql)
      File.open("public/system/shipments/reports/report.csv", 'w:windows-1251') {|f|
        f.write('Наименование продукта;На складе;Ед измерения;Поставщик;Секция на складе;Склад'+"\n")
        m.each do |object|
          f.write(object[0].to_s+';'+object[1].to_s+';'+object[2].to_s+';'+object[3].to_s+';'+object[4].to_s+';'+object[5].to_s+"\n")
        end
        }
#      CSV.open("public/system/shipments/reports/report.csv", "'w:windows-1251'") do |csv|
#
#        # csv << ['Наименование продукта;На складе;Ед измерения;Поставщик;Секция на складе;Склад']
#        m.each do |object|
#
#
#        # cp = Iconv.new("windows-1251", "utf-8")
#
#
#          csv << [object[0].to_s+';'+object[1].to_s+';'+object[2].to_s+';'+object[3].to_s+';'+object[4].to_s+';'+object[5].to_s].force_encoding("utf-8").encode("utf-8")
#          # csv << [object[0].to_s+';'+object[1].to_s+';'+object[2].to_s+';'+object[3].to_s+';'+object[4].to_s+';'+object[5].to_s]
#        end
#      end

      render :text=> '<a href="/system/shipments/reports/report.csv?33">Нажмите что бы скачать отчет</a>'
    end
  end