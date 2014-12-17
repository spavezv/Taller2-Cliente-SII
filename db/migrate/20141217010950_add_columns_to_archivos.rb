class AddColumnsToArchivos < ActiveRecord::Migration
  def change
  	add_column :archivos, :nombreArchivo, :string
  end
end
