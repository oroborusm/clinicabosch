json.array!(@forms) do |form|
  json.extract! form, :id, :nombre, :email, :telefono
  json.url form_url(form, format: :json)
end
