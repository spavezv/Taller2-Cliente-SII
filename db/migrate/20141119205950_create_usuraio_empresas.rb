class CreateUsuraioEmpresas < ActiveRecord::Migration
  def change
    create_table :usuraio_empresas do |t|
      t.integer :id_cliente
      t.integer :id_empresa

      t.timestamps
    end
  end
end
