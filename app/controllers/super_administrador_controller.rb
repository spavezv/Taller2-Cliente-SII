class SuperAdministradorController < ApplicationController
	respond_to :html, :xml, :json
	def index
		@usuarios = Usuario.all
		respond_with(@Usuarios)
  	end
  	def filtrarUsuarios
  		@usuarios = Usuario.where(:tipo_de_usuario => params[:id])
  		respond_with(@Usuarios)
  	end
end
