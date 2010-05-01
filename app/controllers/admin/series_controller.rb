class Admin::SeriesController < Admin::ApplicationController

  record_select :search_on => 'nome', :model => :serie, :per_page => 5, :order_by => "nome", :select => [:nome]

  active_scaffold :serie do |t|
  end

end
