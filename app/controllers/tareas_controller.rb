class TareasController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_tarea, only: [:show, :edit, :update, :destroy]

  def index
    @tareas = Tarea.all
    respond_with(@tarea)
  end

  def show
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
