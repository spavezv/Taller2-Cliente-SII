class UsuarioController < ApplicationController
	respond_to :html, :xml, :json
	before_action :set_usuario, only: [:show, :edit, :update, :destroy]

	def index
		if current_usuario.tipo_de_usuario == 1
			@usuarios = Usuario.all
		elsif current_usuario.tipo_de_usuario == 2
			@usuarios = Usuario.where(:id => 0)
			@empresas = current_usuario.empresas
			@empresas.each do |empresa|
				@usuarios += empresa.usuarios
			end
		end

		respond_with(@usuario)
	end

	def show
		respond_with(@usuario)
	end

	def new
		@usuario = usuario.new
		respond_with(@usuario)
	end

	def edit 	 
		@usuario = Usuario.find(params[:id])
		if current_usuario.tipo_de_usuario == 1
			@empresas = Empresa.all
		elsif current_usuario.tipo_de_usuario == 2
			@empresas = current_usuario.empresas
		end
		respond_with(@usuario,@empresas)

	end

	def create
		@usuario = Usuario.new(usuario_params)
		@usuario.save
		respond_with(@usuario)
	end

	def update
		@id_empresa= params[:usuario][:empresas]
		if(@id_empresa != "" )
			@empresa = Empresa.find(@id_empresa)
			unless (@usuario.empresas.include?(@empresa))
				@usuario.empresas << @empresa
			end
		end
		@usuario.update(usuario_params)
		respond_with(@usuario)
	end

	def destroy
		@usuario.destroy
		respond_with(@usuario)
	end
	
	def filtrarUsuarios
		if current_usuario.tipo_de_usuario == 1
			@usuarios = Usuario.where(:tipo_de_usuario => params[:id])
		elsif current_usuario.tipo_de_usuario == 2
			if params[:id] == "5"
				@usuarios = Usuario.where(:tipo_de_usuario => 4)
			else
				@usuarios = Usuario.where(:id => 0)
				@empresas = current_usuario.empresas
				@empresas.each do |empresa|
					@usuarios += empresa.usuarios.where(:tipo_de_usuario => params[:id])
				end
			end
		end
		@empresas = Empresa.all
		@empresa_usuario = Empresa.all
  		respond_with(@usuarios, @empresas)
  	end

	private
	def set_usuario
		@usuario = Usuario.find(params[:id])
	end

	def usuario_params
		params.require(:usuario).permit(:tipo_de_usuario, :nombre)
	end
end
