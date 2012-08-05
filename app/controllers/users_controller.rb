class UsersController < ApplicationController
  active_scaffold :user do |conf|
    conf.actions.add :export
    conf.columns = [ :login, :email, :password, :password_confirmation]
#    conf.columns=[:email]
#    conf.update.columns=[:email, :password, :password_confirm]
  end
end 