class Admin::MateriasController < Admin::ApplicationController

  record_select :search_on => 'nome', :model => :materia, :per_page => 5, :order_by => "nome", :select => [:nome]
  
  active_scaffold :materia do |t|
  end

end
