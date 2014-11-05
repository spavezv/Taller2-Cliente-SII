json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :nombre, :id_empresa, :creacion, :precio, :pagado, :avance
  json.url servicio_url(servicio, format: :json)
end
