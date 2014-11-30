class IdUsuarioPorUsuarioId < ActiveRecord::Migration
  def change
  	rename_column :servicios, :id_cliente, :usuario_id
  end
end
