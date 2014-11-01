class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre_fantasia
      t.string :nombre_comercial
      t.text :correo
      t.text :web
      t.integer :telefono
      t.text :direccion
      t.string :region
      t.text :representante
      t.string :giro

      t.timestamps
    end
  end
end
