class UsuarioController < ApplicationController
	respond_to :html, :xml, :json
	before_action :set_usuario, only: [:show, :edit, :update, :destroy]

	def index
		@usuarios = usuario.all
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
		@usuario = usuario.find(params[:id])
	end

	def create
		@usuario = usuario.new(usuario_params)
		@usuario.save
		respond_with(@usuario)
	end

	def update
		@usuario.update(usuario_params)
		respond_with(@usuario)
	end

	def destroy
		@usuario.destroy
		respond_with(@usuario)
	end

	private
	def set_usuario
		@usuario = usuario.find(params[:id])
	end

	def usuario_params
		params.require(:usuario).permit(:tipo_de_usuario)
	end
end
