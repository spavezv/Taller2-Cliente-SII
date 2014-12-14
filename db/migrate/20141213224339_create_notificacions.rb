class CreateNotificacions < ActiveRecord::Migration
  def change
    create_table :notificacions do |t|
      t.string :mensaje
      t.boolean :leido
      t.integer :usuario_id
      t.integer :tarea_id

      t.timestamps
    end
  end
end
