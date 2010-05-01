class Admin::CursosController < Admin::ApplicationController

   record_select :search_on => 'materias.nome', :model => :curso, :per_page => 15, :order_by => "materias.nome", :include => :materia

   active_scaffold :curso do |config|
      
   end

end
