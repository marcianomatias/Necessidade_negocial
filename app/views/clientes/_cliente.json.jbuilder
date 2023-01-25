json.extract! cliente, :id, :name, :cpf, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
