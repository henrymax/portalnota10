class Admin::ExtrasController < Admin::ApplicationController

  record_select :search_on => 'nome', :model => :extra, :per_page => 5, :order_by => "nome", :select => [:nome]

  active_scaffold :extra do |t|
  end

end
