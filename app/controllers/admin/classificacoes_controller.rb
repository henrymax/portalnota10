class Admin::ClassificacoesController < Admin::ApplicationController

  active_scaffold :classificacao do |config|
    config.nested.add_link("Séries", [:series])
  end

end
