class AddDefaultValueToServicios < ActiveRecord::Migration
  def up
    change_column :servicios, :tareas_cantidad, :integer, default: 0
    change_column :servicios, :tareas_terminadas, :integer, default: 0

  end

  def down
    remove_column :servicios, :tareas_cantidad
    remove_column :servicios, :tareas_terminadas
  end
end
