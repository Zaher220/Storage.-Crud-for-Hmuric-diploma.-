class SuppliersController < ApplicationController
  active_scaffold :supplier do |conf|
    conf.actions.add :export
    conf.columns[:name].label = :company_name_label
    conf.columns[:adress].label = :adress_label
    conf.columns[:contact_face].label = :contact_face_label
    conf.columns[:tel].label = :tel_label
    conf.columns[:created_at].label = :created_at_label
    conf.columns[:updated_at].label = :updated_at_label
    conf.nested.add_link :shipments
    conf.columns.exclude :products
    conf.columns.exclude :shipments
  end
end 