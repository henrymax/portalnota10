class AddPlanoCliente < ActiveRecord::Migration
  def self.up
    add_column :users, :plano_id, :integer
    add_column :users, :ativo_ate, :date
  end

  def self.down
    remove_column :users, :plano_id
    remove_column :users, :ativo_ate
  end
end
