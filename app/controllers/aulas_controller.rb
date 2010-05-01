class AulasController < ApplicationController

  before_filter :login_required, :only => [ :show ]

  def index
    @aulas = Aula.paginate :per_page => 12, :page => params[:page], :order => 'created_at desc'

    @classificacao = Classificacao.find :all, :order => 'ordem, nome'
    @series = Serie.find :all, :joins => [:classificacao], :order => 'classificacoes.ordem, series.ordem'
    @materias = Materia.find :all, :order => 'nome'
    
  end

  def show
    id = params[:id]
    @aula = Aula.find id
    @video = @aula.videos.first
    @aulas_relacionadas = @aula.aulas
  end
  

end
