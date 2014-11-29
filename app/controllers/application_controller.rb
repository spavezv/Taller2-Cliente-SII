class ApplicationController < ActionController::Base
	before_action :authenticate_usuario!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :obtener_servicios

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :nombre
  end

  def obtener_servicios
  	@servicios = current_usuario.servicios
  end
end
