class Archivos < ActiveRecord::Migration
  def change
  	create_table :archivos do |t|
      t.belongs_to :tarea
      t.timestamps
  	end
  end
end
