json.array!(@proyectos) do |proyecto|
  json.extract! proyecto, :id, :name, :state
  json.url proyecto_url(proyecto, format: :json)
end
