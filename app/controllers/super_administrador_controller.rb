class SuperAdministradorController < ApplicationController
	before_action :authenticate_usuario!
	respond_to :html, :xml, :json
	def index
		@usuarios = Usuario.all
		respond_with(@Usuarios)
  	end
end
