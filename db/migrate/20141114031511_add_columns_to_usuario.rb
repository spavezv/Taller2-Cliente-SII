class AddColumnsToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :nombre, :string
    change_column_null(:usuarios, :nombre, false )
  end
end
