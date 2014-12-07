class TareasController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_tarea, only: [:show, :edit, :update, :destroy]

  def index
    if params[:estadoTarea] == "Asignadas"
      @tareas = current_usuario.tareas_asignadas.where.not(:estado => "Completada")
    elsif params[:estadoTarea] == "Terminadas"
      @tareas = current_usuario.tareas_asignadas.where(:estado => "Completada")
    else
      @tareas = current_usuario.tareas_asignadas
    end
    respond_with(@tareas)
  end

  def show
    @usuarios = Usuario.all
    @ejecutante = @usuarios.find_by(id: @tarea.ejecutante)
    respond_with(@tarea)
  end

  def new
    @tarea = Tarea.new
    @ejecutantes = Usuario.where(:id => 0)
    @empresas = current_usuario.empresas
    @empresas.each do |empresa|
      @ejecutantes += empresa.usuarios.where(:tipo_de_usuario => 3)
    end
    respond_with(@tarea,@ejecutantes)
  end

  def edit
    @tarea = Tarea.find(params[:id])
    @ejecutantes = Usuario.where(:id => 0)
    @empresas = current_usuario.empresas
    @empresas.each do |empresa|
      @ejecutantes += empresa.usuarios.where(:tipo_de_usuario => 3)
    end
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
      params.require(:tarea).permit(:nombre, :estado, :creacion, :termino, :descripcion, :ejecutante)
    end

end
