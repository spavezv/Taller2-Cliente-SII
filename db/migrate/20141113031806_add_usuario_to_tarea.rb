class AddUsuarioToTarea < ActiveRecord::Migration
  def change
    add_column :tareas, :usuario_id, :integer
  end
end
