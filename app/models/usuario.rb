class Usuario < ActiveRecord::Base
	has_many :tareas
	has_and_belongs_to_many :empresas
	has_many :servicios
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
