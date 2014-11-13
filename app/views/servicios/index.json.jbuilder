json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :nombre, :id_empresa, :creacion, :precio, :pagado, :tareas_cantidad, :tareas_terminadas
  json.url servicio_url(servicio, format: :json)
end
