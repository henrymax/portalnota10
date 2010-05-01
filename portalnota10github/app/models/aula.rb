class Aula < ActiveRecord::Base
  has_and_belongs_to_many :extras, :join_table => 'aulas_extras'
  has_and_belongs_to_many :videos, :join_table => 'aulas_videos'
  has_and_belongs_to_many :aulas, :join_table => "relacionados", :foreign_key => "aula_id", :association_foreign_key => "aula_relacionado_id"
  belongs_to :tema
  belongs_to :curso

  #has_one :autor
end