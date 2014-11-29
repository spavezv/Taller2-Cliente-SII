class NuevaColumnaUsuarioEnServicio < ActiveRecord::Migration
  def change
  	add_column :servicios, :usuario_id, :integer
  end
end
