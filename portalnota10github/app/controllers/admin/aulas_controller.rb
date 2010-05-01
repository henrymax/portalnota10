class Admin::AulasController < Admin::ApplicationController

  record_select :search_on => 'titulo', :model => :aula, :per_page => 5, :order_by => "titulo", :select => [:titulo]

  active_scaffold :aula do |config|
    config.columns = [:titulo, :subtitulo, :resumo, :conteudo, :atual_ate, :tema, :curso, :extras, :videos, :publicado]

    config.columns[:tema_id].form_ui = :record_select
    config.columns[:curso_id].form_ui = :record_select
    config.columns[:extra_id].form_ui = :record_select
    config.columns[:video_id].form_ui = :record_select
  end

end
