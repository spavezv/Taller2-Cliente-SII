class ApplicationController < ActionController::Base
	before_action :authenticate_usuario!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :servicios_contratados
  helper_method :servicios_administrados
  helper_method :current_servicio

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :nombre
  end

  def servicios_contratados
  	@servicios = current_usuario.servicios_contratados
  end

  def servicios_administrados
    @servicios = current_usuario.servicios_administrados
  end

  def current_servicio
    @current_servicio ||= Servicio.find(session[:servicio_id]) if session[:servicio_id]
  end
  
end
