json.array!(@companies) do |company|
  json.extract! company, :id, :nombre_fantasia, :nombre_comercial, :correo, :web, :telefono, :duracion, :region, :representante, :giro
  json.url company_url(company, format: :json)
end
