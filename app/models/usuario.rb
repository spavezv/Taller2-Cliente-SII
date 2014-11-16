class Usuario < ActiveRecord::Base
	has_many :tarea
	has_and_belongs_to_many :empresa
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
