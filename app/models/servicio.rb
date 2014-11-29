class Servicio < ActiveRecord::Base
	has_many :tareas
	belongs_to :empresa
	belongs_to :usuario
	
end
