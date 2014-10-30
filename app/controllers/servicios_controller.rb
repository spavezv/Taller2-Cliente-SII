class ServiciosController < ApplicationController
  before_action :set_servicio, only: [:show, :edit, :update, :destroy]

  def index
    @servicios = Servicio.all
    respond_with(@servicios)
  end

  def show
    respond_with(@servicio)
  end

  def new
    @servicio = Servicio.new
  
  end

  def edit
  end

  def create
    @servicio = Servicio.new(servicio_params)
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
      params.require(:servicio).permit(:nombre, :id_servicio, :tareas_usuarios_id, :propietario_id, :fecha_de_creacion, :tarifa, :estado_de_pago)
    end
end
