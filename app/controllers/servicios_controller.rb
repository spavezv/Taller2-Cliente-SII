class ServiciosController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_servicio, only: [:show, :edit, :update, :destroy]

  def index
    if (current_usuario.tipo_de_usuario == 4)
      @servicios = current_usuario.servicios_contratados
    else
      @servicios = Servicio.all
      @empresas = Empresa.all
    end
    respond_with(@servicios, @empresas)
  end

  def show
    session[:servicio_id] = params[:id]
    @servicio = Servicio.find(params[:id])
    @usuarios = Usuario.all
    @cliente = @usuarios.find_by(id: @servicio.cliente)
    @tareas = @servicio.tareas
    respond_with(@servicio, @tareas)
  end

  def new
    @servicio = Servicio.new
    @clientes = Usuario.where(:id => 0)
    @empresas = current_usuario.empresas
    @empresas.each do |empresa|
      @clientes += empresa.usuarios.where(:tipo_de_usuario => 4)
    end
    respond_with(@servicio,@clientes)

  end

  def edit
    @servicio = Servicio.find(params[:id])
    @empresas = current_usuario.empresas
    @clientes = Usuario.where(:id => 0)
    @empresas.each do |empresa|
      @clientes += empresa.usuarios.where(:tipo_de_usuario => 4)
    end
    respond_with(@servicio, @clientes)
  end

  def create

    @servicio = Servicio.new(servicio_params)
    @servicio.creacion = Time.now
    @servicio.save
    respond_with(@servicio)
  end

  def update
    @servicio.update(servicio_params)
    respond_with(@servicio)
  end

  def destroy
    @servicio.destroy
    respond_with(@servicio)
  end

  private
    def set_servicio
      @servicio = Servicio.find(params[:id])
    end

    def servicio_params
      params.require(:servicio).permit(:id, :nombre, :creacion, :precio, :pagado, :id_empresa, :cliente)
    end
end
