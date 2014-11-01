json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :nombre_fantasia, :nombre_comercial, :correo, :web, :telefono, :direccion, :region, :representante, :giro
  json.url empresa_url(empresa, format: :json)
end
