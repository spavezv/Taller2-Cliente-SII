json.array!(@notificacions) do |notificacion|
  json.extract! notificacion, :id, :mensaje, :leido, :usuario_id, :tarea_id
  json.url notificacion_url(notificacion, format: :json)
end
