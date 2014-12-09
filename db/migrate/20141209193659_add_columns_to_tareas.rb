class AddColumnsToTareas < ActiveRecord::Migration
  def change
  	add_column :tareas, :nombreArchivo, :string
  end
end
