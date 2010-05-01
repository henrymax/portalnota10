class Admin::TemasController < Admin::ApplicationController

  record_select :search_on => 'nome', :model => :tema, :per_page => 5, :order_by => "nome", :select => [:nome]

  #record_select :per_page => 7, :search_on => 'nome'
  active_scaffold :tema do |config|
    config.columns[:materia_id].form_ui = :record_select
  end

end
