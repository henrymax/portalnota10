class AddTypeUser < ActiveRecord::Migration
  def self.up
    add_column :users, :type, "ENUM('E','U','C')"# E => educador, U => usuario comum, C => colaborador
  end

  def self.down
    remove_column :users, :type
  end
end