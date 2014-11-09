json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :email, :tipo_de_usuario
  json.url usuario_url(usuario, format: :json)
end
