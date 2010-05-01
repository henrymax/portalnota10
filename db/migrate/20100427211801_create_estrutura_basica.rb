class CreateEstruturaBasica < ActiveRecord::Migration
  def self.up

    create_table :classificacoes do |t|
      t.string :nome
      t.integer :ordem, :default => 0
    end

    create_table :materias do |t|
      t.references :classificacao
      t.string :nome
      t.text :descricao
    end

    create_table :videos do |t|
      t.string :nome
      t.string :descricao
      t.text :tag_html
      t.timestamps
    end

    create_table :relacionados, :primary_key => false do |t|
      t.integer :aula_id, :aula_relacionado_id
    end

    create_table :series do |t|
      t.references :classificacao
      t.string :nome, :limit => 50
      t.integer :ordem, :default => 0
    end

    create_table :temas do |t|
      t.string :nome
      t.text :descricao
      t.integer :ordem, :default => 0
    end

    create_table :extras do |t|
      t.string :nome
      t.string :descricao
      t.text :filename
      t.timestamps
    end

    create_table :aulas do |t|
      t.belongs_to :autor
      t.references :video
      t.references :extra
      t.references :curso
      t.references :tema

      t.string :titulo
      t.string :subtitulo
      t.text :resumo
      t.text :conteudo
      t.boolean :publicado, :default => 0 #0=>não publicado, 1=>publicado
      t.datatime :data_publicacao
      t.timestamps
    end

    create_table :aulas_extras, {:id => false} do |t|
      t.references :aula, :extra
    end

    create_table :aulas_videos, {:id => false} do |t|
      t.references :aula, :video
    end

    create_table :noticias do |t|
      t.string :titulo
      t.string :subtitulo
      t.text :conteudo
      t.boolean :publicado, :default => 0 #0=>não publicado, 1=>publicado
      t.timestamps
    end

    create_table :cursos do |t|
      t.references :materia, :classificacao, :serie
    end

  end

  def self.down

    drop_table :series
    drop_table :temas
    drop_table :materias
    drop_table :classificacao
    drop_table :aulas
    drop_table :videos
    drop_table :relacionados
    drop_table :extras
    drop_table :aulas
    drop_table :noticias
    drop_table :aulas_extras
    drop_table :aulas_videos
    drop_table :cursos

  end
end
