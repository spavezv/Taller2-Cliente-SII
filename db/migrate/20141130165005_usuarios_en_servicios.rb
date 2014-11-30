class UsuariosEnServicios < ActiveRecord::Migration
  def change
  	add_column :servicios, :administrador, :integer
  	rename_column :servicios, :usuario_id, :cliente
  end
end
