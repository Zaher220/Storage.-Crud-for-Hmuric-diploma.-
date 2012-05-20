class BuyersController < ApplicationController
  active_scaffold :buyer do |conf|
    conf.columns[:name].label = :company_name_label
    conf.columns[:adress].label = :adress_label
    conf.columns[:tel].label = :tel_label
    conf.columns[:contact_face].label = :contact_face_label
    conf.columns[:created_at].label = :created_at_label
    conf.columns[:buyer_type].label = :buyer_type_label
    conf.columns[:updated_at].label = :updated_at_label
    conf.columns.exclude :buys
    conf.columns[:buyer_type].form_ui=:select
  end
end 