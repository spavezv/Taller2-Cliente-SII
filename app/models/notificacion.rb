class Notificacion < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :tarea
end
