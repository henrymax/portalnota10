class Curso < ActiveRecord::Base

  belongs_to :materia
  belongs_to :classificacao
  belongs_to :serie

  has_one :aula

  def to_label
    "#{classificacao.nome} - #{materia.nome} - #{serie.nome}"
  end

end
