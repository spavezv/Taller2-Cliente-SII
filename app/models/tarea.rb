class Tarea < ActiveRecord::Base
	belongs_to :servicio
	belongs_to :tareas_asignadas, :class_name => "Usuario"
	after_update :cambio_estado
	after_create :tarea_creada
	has_many :notificacions

	def cambio_estado		
		if estado_changed? && estado == "Completada"
			@serv = Servicio.find_by(id: servicio)
			@serv.update(tareas_terminadas: @serv.tareas_terminadas + 1)
			@empresa = Empresa.find_by_id(@serv.id_empresa)
			@usuarios = @empresa.usuarios.all
			@titulo = "Tarea " + estado
			@usuarios.each do |usuario|
				if (ejecutante != usuario.id)
					Notificacion.create(:titulo => @titulo, :cuerpo => nombre , :leido => false, :usuario_id => usuario.id, :tarea_id => id)
				end
			end	
		elsif estado_changed? && estado_was == "Completada"
			@serv = Servicio.find_by(id: servicio)
			@serv.update(tareas_terminadas: @serv.tareas_terminadas - 1)	
		end

		if ejecutante.present? && ejecutante_changed?
			Notificacion.create(:titulo => @titulo, :cuerpo => nombre , :leido => false, :usuario_id => ejecutante, :tarea_id => id)
		end
	end

	def tarea_creada
		if ejecutante.present?
			Notificacion.create(:titulo => @titulo, :cuerpo => nombre , :leido => false, :usuario_id => ejecutante, :tarea_id => id)
		end
		@serv = Servicio.find_by(id: servicio)
		@serv.update(tareas_cantidad: @serv.tareas_cantidad + 1)
	end

end
