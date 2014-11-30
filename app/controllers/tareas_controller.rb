class TareasController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_tarea, only: [:show, :edit, :update, :destroy]

  def index
    if params[:estadoTarea] == "Asignadas"
      @tareas = current_usuario.tareas_asignadas.where.not(:estado => "Terminada")
    elsif params[:estadoTarea] == "Terminadas"
      @tareas = current_usuario.tareas_asignadas.where(:estado => "Terminada")
    else
      @tareas = current_usuario.tareas_asignadas
    end
    respond_with(@tareas)
  end

  def show
    @usuarios = Usuario.all
    @usuario = @usuarios.find_by(id: @tarea.usuario_id)
    respond_with(@tarea)
  end

  def new
    @tarea = Tarea.new
    respond_with(@tarea)
  end

  def edit
    @tarea = Tarea.find(params[:id])
  end

  def create
    @tarea = Tarea.new(tarea_params)
    @tarea.save
    respond_with(@tarea)
  end

  def update
    @tarea.update(tarea_params)
    respond_with(@tarea)
  end

  def destroy
    @tarea.destroy
    respond_with(@tarea)
  end

  private
    def set_tarea
      @tarea = Tarea.find(params[:id])
    end

    def tarea_params
      params.require(:tarea).permit(:nombre, :estado, :creacion, :termino, :descripcion, :usuario_id)
    end

end
