class HomeController < ApplicationController

  before_filter :login_required, :only => [ :testerestrito ]

  def index
    @noticias = Noticia.find :all, :limit => 3, :order => "created_at desc"
  end
  
end
