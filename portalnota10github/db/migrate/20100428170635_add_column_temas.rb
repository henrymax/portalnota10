class AddColumnTemas < ActiveRecord::Migration
  def self.up
    add_column :temas, :materia_id, :integer
  end

  def self.down
    remove_column :temas, :materia_id
  end
end
