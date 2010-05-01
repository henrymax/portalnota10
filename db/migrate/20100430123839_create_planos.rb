class CreatePlanos < ActiveRecord::Migration
  def self.up
    create_table :planos do |t|
      t.string :nome
      t.decimal :valor, :precision => 14, :scale => 2
      t.integer :dias
      t.integer :ordem, :default => 0
    end
  end

  def self.down
    drop_table :planos
  end
end
