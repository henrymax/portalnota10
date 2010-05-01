class AddColumnsUser < ActiveRecord::Migration
  def self.up
    add_column :users, :nome, :string
    add_column :users, :apelido, :string
    add_column :users, :sexo, :string
    add_column :users, :cpf, :string
    add_column :users, :telefone_residencial, :string
    add_column :users, :telefone_celular, :string
    add_column :users, :data_nascimento, :date
  end

  def self.down
    remove_column :users, :nome
    remove_column :users, :apelido
    remove_column :users, :sexo
    remove_column :users, :cpf
    remove_column :users, :telefone_residencial
    remove_column :users, :telefone_celular
    remove_column :users, :data_nascimento
  end
end
