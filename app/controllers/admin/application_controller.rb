class Admin::ApplicationController < ActionController::Base

  layout "admin/application"

  ActiveScaffold.set_defaults do |config|
    config.ignore_columns.add [:ordem, :created_at, :updated_at, :lock_version]
    config.list.per_page = 12
    config.list.empty_field_text = "[em branco]"
    config.dhtml_history = true
    #ActiveSupport::CoreExtensions::Date::Conversions::DATE_FORMATS[{:brazilian_date => "%d/%m/%Y"}
  end



  def home
    
  end

end
