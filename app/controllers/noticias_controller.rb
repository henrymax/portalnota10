class NoticiasController < ApplicationController

  def index
    @noticias = Noticia.paginate :per_page => 12, :page => params[:page], :order => 'created_at desc'
  end

  def show
    id = params[:id]
    @noticia = Noticia.find id
  end
  
end
