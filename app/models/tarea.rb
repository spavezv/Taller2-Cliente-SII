class Tarea < ActiveRecord::Base
	belongs_to :servicio
	belongs_to :usuario
	before_update :estado_previo
	after_update :cambio_estado
	

	def cambio_estado		
		if estado_changed? && estado == "Terminada"
			@serv = Servicio.find_by(id: servicio)
			@serv.update(tareas_terminadas: @serv.tareas_terminadas + 1)
		end
	end
end
