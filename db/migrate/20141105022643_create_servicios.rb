class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :nombre
      t.integer :id_empresa
      t.date :creacion
      t.string :precio
      t.boolean :pagado
      t.integer :avance

      t.timestamps
    end
  end
end
