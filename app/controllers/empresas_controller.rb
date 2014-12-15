class EmpresasController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_empresa, only: [:show, :edit, :update, :destroy]

  

  def index
    if(current_usuario.tipo_de_usuario== 2)
      @empresas = current_usuario.empresas
    else
      @empresas = Empresa.all
    end
    respond_with(@empresas)
  end

  def show
    @servicios = Servicio.where(:id_empresa => @empresa.id)
    @t_pendientes = Tarea.where("servicio_id = ? AND estado = ?", params[:id], 'En ejecución').count
    @t_terminadas = Tarea.where("servicio_id = ? AND estado = ?", params[:id], 'Completada').count
    respond_with(@empresa, @servicios, @t_pendientes, @t_terminadas)
  end

  def new
    @administradores = Usuario.where(:tipo_de_usuario => 2)
    @empresa = Empresa.new
    respond_with(@empresa,@administradores)
  end

  def edit
     @administradores = Usuario.where(:tipo_de_usuario => 2)
     @empresa = Empresa.find(params[:id])
     respond_with(@empresa,@administradores)
  end

  def create
    @empresa = Empresa.new(empresa_params)
    @empresa.save
    respond_with(@empresa)
  end

  def update
    @empresa.update(empresa_params)
    respond_with(@empresa)
  end

  def destroy
    @empresa.destroy
    respond_with(@empresa)
  end

  private
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    def empresa_params
      params.require(:empresa).permit(:nombre_fantasia, :nombre_comercial, :correo, :web, :telefono, :direccion, :region, :representante, :giro)
    end

  

end
