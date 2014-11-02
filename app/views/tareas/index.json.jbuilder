json.array!(@tareas) do |tarea|
  json.extract! tarea, :id, :nombre, :estado, :creacion, :termino, :descripcion, :servicio, :ejecutante
  json.url tarea_url(tarea, format: :json)
end
