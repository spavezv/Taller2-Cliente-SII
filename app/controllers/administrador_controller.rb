class AdministradorController < ApplicationController

	respond_to :html, :xml, :json
	def index
		@usuarios = Usuario.all
		respond_with(@Usuarios)
  	end
end
