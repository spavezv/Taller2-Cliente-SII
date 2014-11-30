class Servicio < ActiveRecord::Base
	belongs_to :empresa
	belongs_to :servicios_administrados, :class_name => "Usuario"
	belongs_to :servicios_contratados, :class_name => "Usuario"
	has_many :tareas
end
