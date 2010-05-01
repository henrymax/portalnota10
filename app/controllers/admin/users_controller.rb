class Admin::UsersController < Admin::ApplicationController

  active_scaffold :user do |t|
  end

end
