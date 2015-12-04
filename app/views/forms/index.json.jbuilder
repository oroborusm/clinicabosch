json.array!(@forms) do |form|
  json.extract! form, :id, :nombre, :email, :direccion, :region, :comentario
  json.url form_url(form, format: :json)
end
