class CreateTareas < ActiveRecord::Migration
  def change
    create_table :tareas do |t|
      t.string :nombre
      t.string :estado
      t.date :creacion
      t.date :termino
      t.text :descripcion
      t.integer :servicio_id
      t.integer :ejecutante

      t.timestamps
    end
  end
end
