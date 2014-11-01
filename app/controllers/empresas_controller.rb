class EmpresasController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_empresa, only: [:show, :edit, :update, :destroy]

  def index
    @empresas = Empresa.all
    respond_with(@empresas)
  end

  def show
    respond_with(@empresa)
  end

  def new
    @empresa = Empresa.new
    respond_with(@empresa)
  end

  def edit
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
