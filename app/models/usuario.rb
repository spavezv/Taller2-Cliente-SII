class Usuario < ActiveRecord::Base
	has_many :tareas
	has_many :servicios_administrados, :class_name => "Servicio", :foreign_key => "administrador"
	has_many :servicios_contratados, :class_name => "Servicio", :foreign_key => "cliente"
	has_many :tareas_asignadas, :class_name => "Tarea", :foreign_key => "ejecutante"
	has_and_belongs_to_many :empresas
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
