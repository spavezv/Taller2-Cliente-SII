class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :nombre
      t.integer :id_servicio
      t.integer :tareas_usuarios_id
      t.integer :propietario_id
      t.date :fecha_de_creacion
      t.string :tarifa
      t.string :estado_de_pago

      t.timestamps
    end
  end
end
