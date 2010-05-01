class Plano < ActiveRecord::Base

  def descricao
    "#{nome} - R$ #{valor.reais}"
  end

end
