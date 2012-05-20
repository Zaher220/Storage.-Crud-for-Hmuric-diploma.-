class UsersController < ApplicationController
  active_scaffold :user do |conf|
    conf.actions.add :export
  end
end 