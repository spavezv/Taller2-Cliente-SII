class CreateEmpresasUsuarios < ActiveRecord::Migration
  def change
    create_table :empresas_usuarios, id: false do |t|
    	t.belongs_to :empresa
    	t.belongs_to :usuario
    end
  end
end
