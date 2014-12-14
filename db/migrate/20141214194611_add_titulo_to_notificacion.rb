class AddTituloToNotificacion < ActiveRecord::Migration
  def change
  	add_column :notificacions, :titulo, :string
  	rename_column :notificacions, :mensaje, :cuerpo
  end
end
