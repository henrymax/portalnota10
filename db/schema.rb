# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100430141840) do

  create_table "aulas", :force => true do |t|
    t.integer  "autor_id"
    t.integer  "video_id"
    t.integer  "extra_id"
    t.integer  "curso_id"
    t.integer  "tema_id"
    t.string   "titulo"
    t.string   "subtitulo"
    t.text     "resumo"
    t.text     "conteudo"
    t.boolean  "publicado",  :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "atual_ate"
  end

  create_table "aulas_extras", :id => false, :force => true do |t|
    t.integer "aula_id"
    t.integer "extra_id"
  end

  create_table "aulas_videos", :id => false, :force => true do |t|
    t.integer "aula_id"
    t.integer "video_id"
  end

  create_table "classificacoes", :force => true do |t|
    t.string  "nome"
    t.integer "ordem", :default => 0
  end

  create_table "cursos", :force => true do |t|
    t.integer "materia_id"
    t.integer "classificacao_id"
    t.integer "serie_id"
  end

  create_table "extras", :force => true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.text     "filename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materias", :force => true do |t|
    t.integer "classificacao_id"
    t.string  "nome"
    t.text    "descricao"
  end

  create_table "noticias", :force => true do |t|
    t.string   "titulo"
    t.string   "subtitulo"
    t.text     "conteudo"
    t.boolean  "publicado",  :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "resumo"
  end

  create_table "pagamentos", :primary_key => "TransacaoID", :force => true do |t|
    t.datetime "dia"
    t.string   "VendedorEmail",   :limit => 200,                                :default => "", :null => false
    t.string   "Referencia",      :limit => 200
    t.string   "TipoFrete",       :limit => 2
    t.decimal  "ValorFrete",                     :precision => 10, :scale => 2
    t.decimal  "Extras",                         :precision => 10, :scale => 2
    t.text     "Anotacao"
    t.string   "TipoPagamento",   :limit => 50,                                 :default => "", :null => false
    t.string   "StatusTransacao", :limit => 50,                                 :default => "", :null => false
    t.string   "CliNome",         :limit => 200,                                :default => "", :null => false
    t.string   "CliEmail",        :limit => 200,                                :default => "", :null => false
    t.string   "CliEndereco",     :limit => 200,                                :default => "", :null => false
    t.string   "CliNumero",       :limit => 10
    t.string   "CliComplemento",  :limit => 100
    t.string   "CliBairro",       :limit => 100,                                :default => "", :null => false
    t.string   "CliCidade",       :limit => 100,                                :default => "", :null => false
    t.string   "CliEstado",       :limit => 2,                                  :default => "", :null => false
    t.string   "CliCEP",          :limit => 9,                                  :default => "", :null => false
    t.string   "CliTelefone",     :limit => 14
    t.integer  "NumItens",                                                                      :null => false
  end

  create_table "planos", :force => true do |t|
    t.string  "nome"
    t.decimal "valor", :precision => 14, :scale => 2
    t.integer "dias"
    t.integer "ordem",                                :default => 0
  end

  create_table "relacionados", :force => true do |t|
    t.integer "aula_id"
    t.integer "aula_relacionado_id"
  end

  create_table "series", :force => true do |t|
    t.string  "nome",             :limit => 50
    t.integer "classificacao_id"
    t.integer "ordem",                          :default => 0
  end

  create_table "temas", :force => true do |t|
    t.string  "nome"
    t.text    "descricao"
    t.integer "ordem",      :default => 0
    t.integer "materia_id"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "reset_code"
    t.string   "type",                      :limit => 0
    t.integer  "plano_id"
    t.date     "ativo_ate"
    t.string   "nome"
    t.string   "apelido"
    t.string   "sexo"
    t.string   "cpf"
    t.string   "telefone_residencial"
    t.string   "telefone_celular"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

  create_table "videos", :force => true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.text     "tag_html"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
