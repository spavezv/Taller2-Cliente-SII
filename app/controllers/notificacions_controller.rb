class NotificacionsController < ApplicationController
  before_action :set_notificacion, only: [:show, :edit, :update, :destroy]

  def index
    @notificacions = Notificacion.all
    respond_with(@notificacions)
  end

  def show
    respond_with(@notificacion)
  end

  def new
    @notificacion = Notificacion.new
    respond_with(@notificacion)
  end

  def edit
  end

  def create
    @notificacion = Notificacion.new(notificacion_params)
    @notificacion.save
    respond_with(@notificacion)
  end

  def update
    @notificacion.update(notificacion_params)
    respond_with(@notificacion)
  end

  def destroy
    @notificacion.destroy
    respond_with(@notificacion)
  end

  private
    def set_notificacion
      @notificacion = Notificacion.find(params[:id])
    end

    def notificacion_params
      params.require(:notificacion).permit(:mensaje, :leido, :usuario_id, :tarea_id)
    end
end
