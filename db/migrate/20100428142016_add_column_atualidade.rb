class AddColumnAtualidade < ActiveRecord::Migration

  def self.up
    add_column :aulas, :atual_ate, :date
  end

  def self.down
    remove_column :aulas, :atual_ate
  end

end
