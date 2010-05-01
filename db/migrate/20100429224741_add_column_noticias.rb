class AddColumnNoticias < ActiveRecord::Migration
  def self.up
    add_column :noticias, :resumo, :string
  end

  def self.down
    remove_column :noticias, :resumo
  end
end
