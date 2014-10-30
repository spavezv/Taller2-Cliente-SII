json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :nombre, :id_servicio, :tareas_usuarios_id, :propietario_id, :fecha_de_creacion, :tarifa, :estado_de_pago
  json.url servicio_url(servicio, format: :json)
end
